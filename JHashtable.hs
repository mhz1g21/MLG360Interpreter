import Data.HashTable.IO

newMap :: IO (BasicHashTable String a)
newMap = new :: IO (BasicHashTable String a)


insertMap :: BasicHashTable String a -> String -> a -> IO ()
insertMap = insert

-- Look up a value in the hash map by key
lookupMap :: BasicHashTable String a -> String -> IO (Maybe a)
lookupMap = Data.HashTable.IO.lookup
