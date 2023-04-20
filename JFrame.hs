type Frame a = [(String, a)]

-- Create a new frame with an empty list of key-value pairs
newFrame :: Frame a
newFrame = []

-- Add a new key-value pair to the frame
addToFrame :: String -> a -> Frame a -> Frame a
addToFrame key value frame = (key, value) : frame

-- Lookup the value associated with a key in the frame
lookupInFrame :: String -> Frame a -> Maybe a
lookupInFrame _ [] = Nothing
lookupInFrame key ((k,v):xs)
  | key == k = Just v
  | otherwise = lookupInFrame key xs

-- Update the value associated with a key in the frame
updateInFrame :: String -> a -> Frame a -> Frame a
updateInFrame _ _ [] = []
updateInFrame key value ((k,v):xs)
  | key == k = (k, value) : xs
  | otherwise = (k, v) : updateInFrame key value xs
