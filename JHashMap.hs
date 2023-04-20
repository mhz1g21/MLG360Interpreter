import qualified Data.Map as Map
import Data.IORef

main :: IO ()
main = do
  -- Create a new mutable map
  julioHashMap <- newMap

  -- insertMap will be called whenever an EqualsToken is located
  insertMap julioHashMap "tile1" "valuesLoadedIn1"
  insertMap julioHashMap "tile2" "42"


  -- When a variable name is seen and not an equals, use "lookupMap"
  val1 <- lookupMap julioHashMap "tile1"
  val2 <- lookupMap julioHashMap "tile2"
  val3 <- lookupMap julioHashMap "tile3" --No tile3 currently

  -- Temporary just to check if working
  putStrLn $ "tile1: " ++ show val1 
  putStrLn $ "tile2: " ++ show val2 


type MutableMap a = IORef (Map.Map String a)

newMap :: IO (MutableMap a)
newMap = newIORef Map.empty

insertMap :: MutableMap a -> String -> a -> IO ()
insertMap ref key value = modifyIORef' ref (Map.insert key value)

lookupMap :: MutableMap a -> String -> IO (Maybe a)
lookupMap ref key = Map.lookup key <$> readIORef ref
