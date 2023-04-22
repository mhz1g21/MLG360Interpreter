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
evalExpToValue _ _ = error "undefined operation"

--operations of expressionss
-- ################################################
evaluateEquals x e env = do
  value <- evalExpToValue e env
  let updatedSymbolTable = Map.insert x value (symbolTable env)
  return (env { symbolTable = updatedSymbolTable })

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
