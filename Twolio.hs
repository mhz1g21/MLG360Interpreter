import Tokens
import Grammar
import System.Environment
import Control.Exception
import System.IO
import Data.Map as Map
import Debug.Trace


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
evalExpSeq (Exp e) env = trace ("No more recursion") evalExp e env
evalExpSeq (ExpSeq e es) env = do
  putStrLn "More recursion"
  newEnv <- evalExp e env
  evalExpSeq es newEnv


evalExp (JoinH e1 e2) env = evaluateJoinH e1 e2 env
evalExp (Import x y) env = evaluateImport x y env
evalExp (Export x y) env = evaluateExport x y env
evalExp _ _ = do
          putStrLn "I don't know what that is"
          return initEnv


--join tiles horizontally

evaluateJoinH e1 e2 env = do
  newEnv1 <- evalExp e1 env
  newEnv2 <- evalExp e2 newEnv1 {stack = tail $ stack newEnv1}
  let tile1 = head $ stack newEnv2
  let tile2 = head $ tail $ stack newEnv2
  case (tile1,tile2) of 
    (TileValue t1, TileValue t2) -> case joinTilesH t1 t2 of
      Right newTile -> return newEnv2 {stack = TileValue newTile : Prelude.drop 2 (stack newEnv2)}
      Left err -> do
        error $ "Tiles have different dimentions: " ++ err
    _ -> error "expected tiles for joinH"

joinTilesH tile1 tile2 
  | validateTile tile1 tile2 = Right (zipWith (++) tile1 tile2)
  | otherwise = error "Tiles have different dimentions"

validateTile tile1 tile2 = allEqual (Prelude.map length tile1) && allEqual (Prelude.map length tile2)
  where 
    allEqual xs = and $ zipWith (==) xs (tail xs)



--import tile
evaluateImport x (Var y) env = do
  let filename  = show y
  let filepath = y ++".tl"
  tile <- readFileTile filepath
  let newSymbolTable = Map.insert x (TileValue tile) (symbolTable env)
  return env {symbolTable = newSymbolTable}

readFileTile filePath = catch readSuccess noRead
  where
    readSuccess = do
      file <- readFile filePath
      return $ parseTile file
    noRead :: IOException -> IO Tile
    noRead e = throwIO $ userError $ "File not found: " ++ filePath


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


parseTile = Prelude.map (Prelude.map (== '1')). lines
