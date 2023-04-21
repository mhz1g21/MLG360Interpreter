import Tokens
import Grammar
import System.Environment
import Control.Exception
import System.IO
import Data.Map
import GHC.IO.Handle.Internals (ioe_notReadable)



main :: IO ()
main = catch lexing noLex

lexing = do 
  (fileName : _ ) <- getArgs 
  sourceText <- readFile fileName
  putStrLn ("Lexing : " ++ sourceText)
  let parsedProg = alexScanTokens sourceText
  putStrLn ("lexed as " ++ (show parsedProg))
  parsing parsedProg

parsing parsedProg = do 
  let parsedProg' = parseJulio parsedProg
  putStrLn ("parsed as " ++ (show parsedProg'))
  doEnviroment parsedProg'

doEnviroment parsedProg = do
  let finalEnv = evalExpSeq parsedProg initEnv
  putStrLn ("evaluated as " ++ show finalEnv)

--enviroment variables
data Enviroment = Enviroment { stack :: [Exp], symbolTable :: Map String Value } deriving Show

initEnv :: Enviroment
initEnv = Enviroment [] empty

type Tile = [[Bool]]

data Value = TileValue Tile 
  | IntValue Int deriving Show

--evaluator
-- ######################################################################################################################

evalExpSeq (Exp e) env = evalExp e env
evalExpSeq (ExpSeq e es) env = 
  let newEnv = evalExp e env
  in evalExpSeq es newEnv


evalExp (Equals x e) env = evaluateEquals x e env
evalExp (JoinH e1 e2) env = undefined
evalExp (JoinV e1 e2) env = undefined
evalExp (Export x y) env = evaluateExport x y env
evalExp (Import x y) env = evaluateImport x y env
evalExp (Int x ) env = undefined
evalExp (Var x) env = undefined
evalExp (RepeatH n e) env = undefined
evalExp (RepeatV n e) env = undefined

--operations of expressions
-- ################################################
evaluateEquals :: String -> Exp -> Enviroment -> Enviroment
evaluateEquals x e env = undefined

--join tiles horizontally
evaluateJoinH e1 e2 env = do
  newEnv1 <- evalExp e1 env
  newEnv2 <- evalExp e2 newEnv1 {stack = tail $ stack newEnv1}
  let tile1 = head $ stack newEnv2
  let tile2 = head $ tail $ stack newEnv2
  case (tile1,tile2) of 
    (TileValue t1, TileValue t2) -> case JoinTilesH t1 t2 of
      Right newTile -> return newEnv2 {stack = TileValue newTile : drop 2 (stack newEnv2)}
      Left err -> do
        error $ "Tiles have different dimentions: " ++ err
    _ -> error "expected tiles for joinH"

joinTilesH tile1 tile2 
  | validateTile tile1 tile2 = Right (zipwith (++) tile1 tile2)
  | otherwise = error "Tiles have different dimentions"

--join tiles vertically
evaluateJoinV e1 e2 env = do
  newEnv1 <- evalExp e1 env
  newEnv2 <- evalExp e2 newEnv1 {stack = tail $ stack newEnv1}
  let tile1 = head $ stack newEnv2
  let tile2 = head $ tail $ stack newEnv2
  case (tile1,tile2) of
    (TileValue t1, TileValue t2) -> case joinTilesV t1 t2 of
      Right newTile -> return newEnv2 {stack = TileValue newTile : drop 2 (stack newEnv2)}
      Left err -> do
        error $ "Tiles have different dimentions: " ++ err
    _ -> error "expected tiles for joinV"
  

validateTile tile1 tile2 = allEqual (map length tile1) && allEqual (map length tile2)
  where 
    allEqual xs = and $ zipWith (==) xs (tail xs)

joinTilesV tile1 tile1
  | validateTile tile1 tile2 = Right (tile1 ++ tile2)
  | otherwise = error "Tiles have different dimentions"

--export tile
evaluateExport x y env = case Map.lookup x (symbolTable env) of
  Just (TileValue tile) -> do
    let filePath = y <.> "tl"
    writeTilefile filePath tile
    return env
  _ -> error $ "Tile variable not found: " ++ x

boolToChar True = '1'
boolToChar False = '0'

tileToString = unlines . map (map boolToChar)

writeTilefile filepath tile = writeFile filepath (tileToString tile)

--import tile
evaluateImport x y env = do
  let filepath = y <.> "tl"
  tile <- readFileTile filepath
  let newSymbolTable = Map.insert x (TileValue tile) (symbolTable env)
  return env {symbolTable = newSymbolTable}

parseTile = map (map (== '1')). lines

readFileTile filePath = catch readSuccess noRead
  where
    readSuccess = do
      file <- readFile filePath
      return $ parseTile file
    noRead e = do
      error $ "File not found: " ++ filePath

evaluateInt :: Int -> Enviroment -> Enviroment
evaluateInt x env = undefined

evaluateVar :: String -> Enviroment -> Enviroment
evaluateVar x env = undefined

evaluateRepeatH :: Int -> ExpSeq -> Enviroment -> Enviroment
evaluateRepeatH n e env = undefined

evaluateRepeatV :: Int -> ExpSeq -> Enviroment -> Enviroment
evaluateRepeatV n e env = undefined


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

