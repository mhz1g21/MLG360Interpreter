import Tokens
import Grammar
import System.Environment
import Control.Exception
import System.IO
import Data.Map as Map



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
data Enviroment = Enviroment { stack :: [Exp], symbolTable :: Map String Exp } deriving Show

initEnv :: Enviroment
initEnv = Enviroment [] empty

type Tile = [[Bool]]

--evaluator
-- ######################################################################################################################

evalExpSeq (Exp e) env = evalExp e env
evalExpSeq (ExpSeq e es) env = 
  let newEnv = evalExp e env
  in evalExpSeq es newEnv


evalExp (Equals x e) env = evaluateEquals x e env
evalExp (JoinH e1 e2) env = undefined
evalExp (JoinV e1 e2) env = undefined
evalExp (Int x ) env = undefined
evalExp (Var x) env = undefined
evalExp (RepeatH n e) env = undefined
evalExp (RepeatV n e) env = undefined


--operations of expressionss
-- ################################################
evaluateEquals :: String -> Exp -> Enviroment -> Enviroment
evaluateEquals x e env = undefined

evaluateJoinH :: Exp -> Exp -> Enviroment -> Enviroment
evaluateJoinH e1 e2 env = undefined

evaluateJoinV :: Exp -> Exp -> Enviroment -> Enviroment
evaluateJoinV e1 e2 env = undefined

evaluateExport :: Exp -> String -> Enviroment -> Enviroment
evaluateExport x y env = undefined

--import tile
evaluateImport x y env = do
  let filepath = y <.> "tl"
  tile <- readFileTile filepath
  let newSymbolTable = Map.insert x (Tile tile) (symbolTable env)
  return env {symbolTable = newSymbolTable}

parseTile = Prelude.map (Prelude.map (== '1')). lines

readFileTile filePath = do
  contents <- readFile filePath
  return $ parseTile contents


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

