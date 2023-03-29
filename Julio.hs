import Tokens
import Grammar
import System.Environment
import Control.Exception
import System.IO


main :: IO ()
main = catch main' noLex

main'  = do (fileName : _ ) <- getArgs 
            sourceText <- readFile fileName
            putStrLn ("Parsing : " ++ sourceText)
            let parsedProg = alexScanTokens sourceText
            putStrLn ("lexed as " ++ (show parsedProg))
            let parsedProg' = parseJulio parsedProg
            putStrLn ("parsed as " ++ (show parsedProg'))

noLex :: ErrorCall -> IO ()
noLex e = do let err =  show e
             hPutStr stderr ("Problem with: " ++ err)
             return ()