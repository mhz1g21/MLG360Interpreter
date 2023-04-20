import qualified Data.Map as Map
import Data.IORef

type MutableMap a = IORef (Map.Map String a)

newMap :: IO (MutableMap a)
newMap = newIORef Map.empty

insertMap :: MutableMap a -> String -> a -> IO ()
insertMap ref key value = modifyIORef' ref (Map.insert key value)

lookupMap :: MutableMap a -> String -> IO (Maybe a)
lookupMap ref key = Map.lookup key <$> readIORef ref
