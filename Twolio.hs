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

