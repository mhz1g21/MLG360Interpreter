import Tokens
import Grammar
import System.Environment
import Control.Exception
import System.IO
import Data.Map as Map
import Data.List
import System.Exit
import System.FilePath (takeExtension)




main :: IO ()
main = catch lexing noLex

lexing = do
  args <- getArgs
  case args of
    (fileName : _ ) -> do
      let extension = takeExtension fileName
      case (extension) of
        ".tsl" -> do
          sourceText <- readFile fileName
          --putStrLn ("Lexing : " ++ sourceText)
          let lexedProg = alexScanTokens sourceText
          --putStrLn ("Lexed as " ++ (show lexedProg))
          catch (parsing lexedProg) noParse
        _ -> error "Invalid file type, must be .tsl"
    _ -> error "No file given, please provide a .tsl file"
  
  
  

parsing lexedProg = do 
  let parsedProg = parseJulio lexedProg
  --putStrLn ("Parsed as " ++ (show parsedProg))
  catch (doEnviroment parsedProg) runtimeError


doEnviroment parsedProg = do
  finalEnv <- evalExpSeq parsedProg initEnv
  --putStrLn ("Finished with Enviroment")
  return ();


--enviroment variables
data Enviroment = Enviroment { stack :: [Value], symbolTable :: Map String Value } deriving Show

initEnv :: Enviroment
initEnv = Enviroment [] empty

type Tile = [[Bool]]

data Value = TileValue Tile 
  | IntValue Int
  | BoolValue Bool deriving (Show,Eq)

--evaluator
-- ######################################################################################################################


evalExpSeq :: ExpSeq -> Enviroment -> IO Enviroment
evalExpSeq (Exp e) env = evalExp e env
evalExpSeq (ExpSeq e es) env = do
  newEnv <- evalExp e env
  evalExpSeq es newEnv
evalExpSeq _ env = return env

evalExp (Equals x e) env = evaluateEquals x e env
evalExp (Export x y) env = evaluateExport x y env
evalExp (Import x y) env = evaluateImport x y env
evalExp (Repeat n e) env = evaluateRepeat n e env
evalExp (Print e) env = evaluatePrint e env
evalExp (While cond expSeq) env = evaluateWhile cond expSeq env
evalExp (If condition trueExpSeq falseExpSeq) env = evaluateIf condition trueExpSeq falseExpSeq env
evalExp None env = return env
evalExp e _ = error ("invalid use of expression " ++ show e)

evalExpToValue (Int n) _ = return (IntValue n)
evalExpToValue (Bool b) _ = return (BoolValue b)
evalExpToValue (Var x) env = case Map.lookup x (symbolTable env) of
  Just value -> return value
  Nothing    -> error ("Variable " ++ x ++ " not found")
evalExpToValue (JoinV e1 e2) env = evaluateJoinV e1 e2 env
evalExpToValue (JoinH e1 e2) env = evaluateJoinH e1 e2 env
evalExpToValue (Not e) env = evaluateNot e env
evalExpToValue (Rotate n e) env = evaluateRotate n e env
evalExpToValue (Scale n e) env = evaluateScale n e env
evalExpToValue (ReflectY e) env = evaluateReflectY e env
evalExpToValue (ReflectX e) env = evaluateReflectX e env
evalExpToValue (And e1 e2) env = evaluateAnd e1 e2 env
evalExpToValue(Blank e) env = evaluateBlank e env
evalExpToValue (Or e1 e2) env = evaluateOr e1 e2 env
evalExpToValue (Subtile x y size tile) env = evaluateSubtile x y size tile env
evalExpToValue (Gibb x y pasteTile baseTile) env = evaluateGibb x y pasteTile baseTile env
evalExpToValue (LessThan e1 e2) env = evaluateLessThan e1 e2 env
evalExpToValue (GreaterThan e1 e2) env = evaluateGreaterThan e1 e2 env
evalExpToValue (IsEqual e1 e2) env = evaluateIsEqual e1 e2 env
evalExpToValue (NotEqual e1 e2) env = evaluateNotEqual e1 e2 env
evalExpToValue (Width e) env = evaluateWidth e env
evalExpToValue (Height e) env = evaluateHeight e env
evalExpToValue (Add e1 e2) env = evaluateAdd e1 e2 env
evalExpToValue (Sub e1 e2) env = evaluateSub e1 e2 env
evalExpToValue e _ = error "invalide use of assignment expressions"

--operations of expressionss
-- ################################################
evaluateEquals x e env = do
  value <- evalExpToValue e env
  let updatedSymbolTable = Map.insert x value (symbolTable env)
  return (env { symbolTable = updatedSymbolTable })

evaluateIf condition trueExpSeq falseExpSeq env = do
  value <- evalExpToValue condition env
  case value of
    BoolValue b -> if b
      then evalExpSeq trueExpSeq env
      else evalExpSeq falseExpSeq env
    _ -> error "The 'If' condition expects a Bool value or a variable/expression referring to a Bool value"

-- subtraction of ints
evaluateSub exp1 exp2 env = do
  val1 <- evalExpToValue exp1 env
  val2 <- evalExpToValue exp2 env
  case (val1, val2) of
    (IntValue i1, IntValue i2) -> return $ IntValue (i1 - i2)
    _ -> error "The 'Sub' operation expects both operands to be Int or variables that reference Int"

--addition of ints
evaluateAdd exp1 exp2 env = do
  val1 <- evalExpToValue exp1 env
  val2 <- evalExpToValue exp2 env
  case (val1, val2) of
    (IntValue i1, IntValue i2) -> return $ IntValue (i1 + i2)
    _ -> error "The 'Add' operation expects both operands to be Int or variables that reference Int"

--while loop
evaluateWhile cond expSeq env = do
  condValue <- evalExpToValue cond env
  case condValue of
    BoolValue True -> do
      newEnv <- evalExpSeq expSeq env
      evaluateWhile cond expSeq newEnv
    BoolValue False -> return env
    _ -> error "The 'While' condition must be a LessThan, GreaterThan, IsEqual, NotEqual, or BoolValue expression"

--print function
evaluatePrint :: Exp -> Enviroment -> IO Enviroment
evaluatePrint e env = do
  value <- evalExpToValue e env
  case value of
    IntValue i    -> do
      putStrLn (show i)
      return env
    BoolValue b   -> do
      putStrLn (show b)
      return env
    TileValue tile -> do
      let tileAsOnesAndZeros = [ [ if b then 1 else 0 | b <- row ] | row <- tile ]
          tileAsStrings = [ concatMap show row | row <- tileAsOnesAndZeros ]
      mapM_ putStrLn tileAsStrings
      return env
    _ -> error "The 'Print' function expects a Var, Int or Bool value or a variable referring to such values"



--calculate width of a tile
evaluateWidth e env = do
  value <- evalExpToValue e env
  case value of
    TileValue tile -> return (IntValue (calculateWidth tile))
    _ -> error "The 'Width' function expects a Tile"

calculateWidth tile = case tile of
  []     -> 0
  (x:_)  -> length x

--calculate height of a tile
evaluateHeight e env = do
  value <- evalExpToValue e env
  case value of
    TileValue tile -> return (IntValue (calculateHeight tile))
    _ -> error "The 'Height' function expects a Tile"

calculateHeight tile = length tile

--equals comparison
evaluateNotEqual e1 e2 env = do
  value1 <- evalExpToValue e1 env
  value2 <- evalExpToValue e2 env
  case (value1, value2) of
    (IntValue n1, IntValue n2)         -> return (BoolValue (n1 /= n2))
    (BoolValue b1, BoolValue b2)       -> return (BoolValue (b1 /= b2))
    (TileValue t1, TileValue t2)       -> return (BoolValue (t1 /= t2))
    _ -> error "Both operands of 'NotEqual' should be Int, Bool, or Tile values or variables referring to Int, Bool, or Tile values"

--not equal comparison
evaluateIsEqual e1 e2 env = do
  value1 <- evalExpToValue e1 env
  value2 <- evalExpToValue e2 env
  case (value1, value2) of
    (IntValue n1, IntValue n2)         -> return (BoolValue (n1 == n2))
    (BoolValue b1, BoolValue b2)       -> return (BoolValue (b1 == b2))
    (TileValue t1, TileValue t2)       -> return (BoolValue (t1 == t2))
    _ -> error "Both operands of 'IsEqual' should be Int, Bool, or Tile values or variables referring to Int, Bool, or Tile values"

--greater than comparison
evaluateGreaterThan e1 e2 env = do
  value1 <- evalExpToValue e1 env
  value2 <- evalExpToValue e2 env
  case (value1, value2) of
    (IntValue n1, IntValue n2) -> return (BoolValue (n1 > n2))
    _ -> error "Both operands of 'GreaterThan' should be Int values or variables referring to Int values"

--less than comparison
evaluateLessThan e1 e2 env = do
  value1 <- evalExpToValue e1 env
  value2 <- evalExpToValue e2 env
  case (value1, value2) of
    (IntValue n1, IntValue n2) -> return (BoolValue (n1 < n2))
    _ -> error "Both operands of 'LessThan' should be Int values or variables referring to Int values"

--paste a tile ontop of another tile
evaluateGibb x y pasteTile baseTile env = do
  let xValue = IntValue x
  yValue <- evalExpToValue y env
  pasteTileValue <- evalExpToValue pasteTile env
  baseTileValue <- evalExpToValue baseTile env
  case (xValue, yValue, pasteTileValue, baseTileValue) of
    (IntValue xInt, IntValue yInt, TileValue toPasteTile, TileValue baseTile) -> do
      let resultTile = pasteTheTile xInt yInt toPasteTile baseTile
      return (TileValue resultTile)
    _ -> error "Invalid operands for 'gibb' operation"


pasteTheTile :: Int -> Int -> [[Bool]] -> [[Bool]] -> [[Bool]]
pasteTheTile x y tileToPaste baseTile = zipWith mergeRows baseTile (shiftedTile ++ repeat emptyRow)
  where
    emptyRow = repeat False
    shiftedTile = (replicate y emptyRow) ++ (Prelude.map (shiftRow x) tileToPaste)
    shiftRow :: Int -> [Bool] -> [Bool]
    shiftRow n row = (replicate n False) ++ row ++ (replicate (width - n - length row) False)
    width = length (head baseTile)
    mergeRows :: [Bool] -> [Bool] -> [Bool]
    mergeRows baseRow pasteRow = zipWith (||) baseRow pasteRow
    

--subtile operation
evaluateSubtile x y size tileExp env = do
  let xValue = IntValue x
  yValue <- evalExpToValue y env
  sizeValue <- evalExpToValue size env
  tileValue <- evalExpToValue tileExp env

  case (xValue, yValue, sizeValue, tileValue) of
    (IntValue xInt, IntValue yInt, IntValue sizeInt, TileValue tile) -> do
      let subTile = subTileFromTile xInt yInt sizeInt tile
      return (TileValue subTile)
    _ -> error "Invalid operands for 'subtile' operation"

subTileFromTile x y size tile = Data.List.take size . Prelude.map (Data.List.take size . Data.List.drop x) . Data.List.drop y $ tile

--evaluate or operation
evaluateOr e1 e2 env = do
  tileValue1 <- evalExpToValue e1 env
  tileValue2 <- evalExpToValue e2 env
  case (tileValue1, tileValue2) of
    (TileValue tile1, TileValue tile2) -> do
      let resultTile = orTiles tile1 tile2
      return (TileValue resultTile)
    (BoolValue b1, BoolValue b2) -> return (BoolValue (b1 || b2))
    _ -> error "The operands of 'or' should be a Tile or Bool values or variables referring to Tile or Bool values"

orTiles tile1 tile2 = zipWith (zipWith (||)) tile1 tile2

--create blank tile
evaluateBlank e env = do
  referenceTileValue <- evalExpToValue e env
  case referenceTileValue of
    TileValue referenceTile -> do
      let numRows = length referenceTile
      let numCols = length (head referenceTile)
      let blankTile = replicate numRows (replicate numCols False)
      return (TileValue blankTile)
    IntValue size -> do
      let blankTile = replicate size (replicate size False)
      return (TileValue blankTile)
    _ -> error "The operand of '_' should be a Tile"

--evaluate and operation
evaluateAnd e1 e2 env = do
  tileValue1 <- evalExpToValue e1 env
  tileValue2 <- evalExpToValue e2 env
  case (tileValue1, tileValue2) of
    (TileValue tile1, TileValue tile2) -> do
      let resultTile = andTiles tile1 tile2
      return (TileValue resultTile)
    (BoolValue b1, BoolValue b2) -> return (BoolValue (b1 && b2))
    _ -> error "The operands of 'and' should be a Tile or Bool values or variables referring to Tile or Bool values"
andTiles tile1 tile2 = zipWith (zipWith (&&)) tile1 tile2

--reflect tile y axis
evaluateReflectY e env = do
  tileValue <- evalExpToValue e env
  case tileValue of
    TileValue tile -> do
      let reflectedTile = reflectYTile tile
      return (TileValue reflectedTile)
    _ -> error "The operand of 'reflectY' should be a Tile"

reflectYTile = Prelude.map reverse

--reflect tile x axis
evaluateReflectX e env = do
  tileValue <- evalExpToValue e env
  case tileValue of
    TileValue tile -> do
      let reflectedTile = reflectXTile tile
      return (TileValue reflectedTile)
    _ -> error "The operand of 'reflectX' should be a Tile"

reflectXTile = reverse

--negation of tile
evaluateNot e env = do
  tileValue <- evalExpToValue e env
  case tileValue of
    TileValue tile -> do
      let negatedTile = Prelude.map (Prelude.map not) tile
      return (TileValue negatedTile)
    BoolValue b -> return (BoolValue (not b))
    _ -> error "The operand of 'not' should be a Tile or Bool value or variable referring to a Tile or Bool value"

--rotate tile
evaluateRotate n e env = do
  tileValue <- evalExpToValue e env
  case tileValue of
    TileValue tile -> do
      let rotatedTile = rotateNTimes n tile
      return (TileValue rotatedTile)
    _ -> error "The operand of 'rotate' should be a Tile"

rotate90Clockwise :: Tile -> Tile
rotate90Clockwise = Prelude.map reverse . transpose

rotate90Counterclockwise :: Tile -> Tile
rotate90Counterclockwise = reverse . Prelude.map reverse . transpose

rotateNTimes :: Int -> Tile -> Tile
rotateNTimes n tile
  | n == 0 = tile
  | n > 0 = rotateNTimes (n - 1) (rotate90Clockwise tile)
  | n < 0 = rotateNTimes (n + 1) (rotate90Counterclockwise tile) 

--scale tile
evaluateScale n e env = do
  tileValue <- evalExpToValue e env
  case tileValue of
    TileValue tile -> do
      let scaledTile = scaleNTimes n tile
      return (TileValue scaledTile)
    _ -> error "The operand of 'scale' should be a Tile"

-- Helper function to scale a tile by a factor of n
scaleNTimes :: Int -> Tile -> Tile
scaleNTimes n tile = concatMap (replicate n) (Prelude.map (concatMap (replicate n)) tile) 


--join tiles horizontally
evaluateJoinH e1 e2 env = do
  tile1 <- evalExpToValue e1 env
  tile2 <- evalExpToValue e2 env
  case (tile1, tile2) of
    (TileValue t1, TileValue t2) -> do
      let joinedTile = joinTilesH t1 t2
      return (TileValue joinedTile)
    _ -> error "Both operands of joinH should be a Tile"

joinTilesH t1 t2 = do
  let equal = length t1 == length t2
  case (equal) of
    True -> zipWith (++) t1 t2
    False -> error "Tiles must have the same number of rows to be joined horizontally"

--join tiles vertically
evaluateJoinV e1 e2 env = do
  tile1 <- evalExpToValue e1 env
  tile2 <- evalExpToValue e2 env
  case (tile1, tile2) of
    (TileValue t1, TileValue t2) -> do
      let joinedTile = joinTilesV t1 t2
      return (TileValue joinedTile)
    _ -> error "Both operands of joinV should be a Tile"
  
joinTilesV t1 t2 = do
  let equal = length (head t1) == length (head t2)
  case (equal) of
    True -> t1 ++ t2
    False -> error "Tiles must have the same number of columns to be joined vertically"
  


--export tile
evaluateExport x (Var y) env = case Map.lookup x (symbolTable env) of
  Just (TileValue tile) -> do
    let filename  = show y
    let filePath = y ++".tl"
    writeTilefile filePath tile
    return env
  _ -> error $ "Tile variable not found: " ++ x

boolToChar True = '1'
boolToChar False = '0'

tileToString = unlines . Prelude.map (Prelude.map boolToChar)

writeTilefile filepath tile = writeFile filepath (tileToString tile)

--import tile
evaluateImport x (Var y) env = do
  let filename  = show y
  let filepath = y ++".tl"
  tile <- readFileTile filepath
  let height = length tile
  let width = length (head tile)
  case (height == width) of
    True -> do
      let newSymbolTable = Map.insert x (TileValue tile) (symbolTable env)
      return env {symbolTable = newSymbolTable}
    False -> error "Tile must be square (NxN)"

parseTile = Prelude.map (Prelude.map (== '1')). lines

readFileTile filePath = catch readSuccess noRead
  where
    readSuccess = do
      file <- readFile filePath
      return $ parseTile file
    noRead :: IOException -> IO Tile
    noRead e = do
      error $ "File not found: " ++ filePath

evaluateInt :: Int -> Enviroment -> Enviroment
evaluateInt x env = undefined

evaluateVar :: String -> Enviroment -> Enviroment
evaluateVar x env = undefined

--loop n times
evaluateRepeat 0 _ env = return env
evaluateRepeat n es env
  | n > 0 = do
      newEnv <- evalExpSeq es env
      evaluateRepeat (n - 1) es newEnv
  | otherwise = error "Repeat count should be non-negative"




--Error handling
-- ######################################################################################################################
noLex :: ErrorCall -> IO ()
noLex e = do 
  let err =  show e
  hPutStr stderr ("Lexical Error: " ++ err)
  return ()

noParse :: ErrorCall ->IO ()
noParse e = do 
  let err =  show e
  hPutStr stderr ("Parsing Error: " ++ err)
  return ()

runtimeError :: ErrorCall -> IO ()
runtimeError e = do 
  let err =  show e
  hPutStr stderr ("Runtime Error: " ++ err)
  return ()

validateTile tile1 tile2 = allEqual (Prelude.map length tile1) && allEqual (Prelude.map length tile2)
  where 
    allEqual xs = and $ zipWith (==) xs (tail xs)
