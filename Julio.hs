import Tokens
import Grammar
import System.Environment
import Control.Exception
import System.IO
import Data.Map as Map
import Data.List



main :: IO ()
main = catch lexing noLex

lexing = do 
  (fileName : _ ) <- getArgs 
  sourceText <- readFile fileName
  putStrLn ("Lexing : " ++ sourceText)
  let lexedProg = alexScanTokens sourceText
  putStrLn ("Lexed as " ++ (show lexedProg))
  parsing lexedProg

parsing lexedProg = do 
  let parsedProg = parseJulio lexedProg
  putStrLn ("Parsed as " ++ (show parsedProg))
  doEnviroment parsedProg


doEnviroment parsedProg = do
  finalEnv <- evalExpSeq parsedProg initEnv
  putStrLn ("Finished with Enviroment")


--enviroment variables
data Enviroment = Enviroment { stack :: [Value], symbolTable :: Map String Value } deriving Show

initEnv :: Enviroment
initEnv = Enviroment [] empty

type Tile = [[Bool]]

data Value = TileValue Tile 
  | IntValue Int deriving Show

--evaluator
-- ######################################################################################################################


evalExpSeq :: ExpSeq -> Enviroment -> IO Enviroment
evalExpSeq (Exp e) env = evalExp e env
evalExpSeq (ExpSeq e es) env = do
  newEnv <- evalExp e env
  evalExpSeq es newEnv

evalExp (Equals x e) env = evaluateEquals x e env
evalExp (Export x y) env = evaluateExport x y env
evalExp (Import x y) env = evaluateImport x y env
evalExp (Repeat n e) env = evaluateRepeat n e env
evalExp _ _ = error "Not implemented"

evalExpToValue (Int n) _ = return (IntValue n)
evalExpToValue (Var x) env = case Map.lookup x (symbolTable env) of
  Just value -> return value
  Nothing    -> error ("Undefined variable: " ++ x)
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
evalExpToValue _ _ = error "undefined operation"

--operations of expressionss
-- ################################################
evaluateEquals x e env = do
  value <- evalExpToValue e env
  let updatedSymbolTable = Map.insert x value (symbolTable env)
  return (env { symbolTable = updatedSymbolTable })

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
    _ -> error "The operands of 'or' should be TileValues"

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
    _ -> error "The operand of 'blank' should be a TileValue"

--evaluate and operation
evaluateAnd e1 e2 env = do
  tileValue1 <- evalExpToValue e1 env
  tileValue2 <- evalExpToValue e2 env
  case (tileValue1, tileValue2) of
    (TileValue tile1, TileValue tile2) -> do
      let resultTile = andTiles tile1 tile2
      return (TileValue resultTile)
    _ -> error "The operands of 'and' should be TileValues"
andTiles tile1 tile2 = zipWith (zipWith (&&)) tile1 tile2

--reflect tile y axis
evaluateReflectY e env = do
  tileValue <- evalExpToValue e env
  case tileValue of
    TileValue tile -> do
      let reflectedTile = reflectYTile tile
      return (TileValue reflectedTile)
    _ -> error "The operand of 'reflectY' should be a TileValue"

reflectYTile = Prelude.map reverse

--reflect tile x axis
evaluateReflectX e env = do
  tileValue <- evalExpToValue e env
  case tileValue of
    TileValue tile -> do
      let reflectedTile = reflectXTile tile
      return (TileValue reflectedTile)
    _ -> error "The operand of 'reflectX' should be a TileValue"

reflectXTile = reverse

--negation of tile
evaluateNot e env = do
  tileValue <- evalExpToValue e env
  case tileValue of
    TileValue tile -> do
      let negatedTile = Prelude.map (Prelude.map not) tile
      return (TileValue negatedTile)
    _ -> error "The operand of 'not' should be a TileValue" 

--rotate tile
evaluateRotate n e env = do
  tileValue <- evalExpToValue e env
  case tileValue of
    TileValue tile -> do
      let rotatedTile = rotateNTimes n tile
      return (TileValue rotatedTile)
    _ -> error "The operand of 'rotate' should be a TileValue"

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
    _ -> error "The operand of 'scale' should be a TileValue"

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
    _ -> error "Both operands of joinH should be TileValues"

joinTilesH t1 t2 = zipWith (++) t1 t2

--join tiles vertically
evaluateJoinV e1 e2 env = do
  tile1 <- evalExpToValue e1 env
  tile2 <- evalExpToValue e2 env
  case (tile1, tile2) of
    (TileValue t1, TileValue t2) -> do
      let joinedTile = joinTilesV t1 t2
      return (TileValue joinedTile)
    _ -> error "Both operands of joinV should be TileValues"
  
joinTilesV t1 t2 = t1 ++ t2


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
  let newSymbolTable = Map.insert x (TileValue tile) (symbolTable env)
  return env {symbolTable = newSymbolTable}
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



validateTile tile1 tile2 = allEqual (Prelude.map length tile1) && allEqual (Prelude.map length tile2)
  where 
    allEqual xs = and $ zipWith (==) xs (tail xs)
