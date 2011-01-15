module Main where
import System.Environment (getArgs)

data Tree a = Branch a Tree Tree | Leaf a deriving (Show)

main:: IO ()
main = do 
    f <- getArgs
    raw <- readFile (head f)
    let rawData = map (map (read::(String -> Int))) $ map (words) $ lines raw
    --print rawData

buildTree:: [[a]] -> Tree a

    
