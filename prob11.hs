module Main where

import System.Environment (getArgs)

main = do 
    args <- getArgs
    rawF <- readFile (head args)
    let table = map (map (read)) $ map (words) $ lines rawF
    let d = dimensions table
    putStrLn $ show $ result d table 4

patterns = [productRow, productCol, productRightDiag, productLeftDiag]

result d table n = maximum $ map (maxPattern d n table) patterns

maxPattern d n table f = maximum (map (f d n table) (coOrds d))

productRightDiag (mX, mY) n table (x,y) 
    | (mY - y) <= n || (mX - x) <= n = 0
    | otherwise = product $ map (elemAt table) [(x+i,y+i) | i <- [0..(pred n)]]

productLeftDiag (mX, mY) n table (x,y) 
    | (mY - y) <= n || x <= n = 0
    | otherwise = product $ map (elemAt table) [(x-i,y+i) | i <- [0..(pred n)]]

productCol (mX,mY) n table (x,y) 
    | (mY - y) <= n = 0
    | otherwise = product $ map (elemAt table) [(x,y+i) | i <- [0..(pred n)]]

productRow (mX,mY) n table (x,y) 
    | (mX - x) <= n = 0
    | otherwise = product $ map (elemAt table) [(x+i,y) | i <- [0..(pred n)]]

dimensions table = (length $ head table, length table)
coOrds dimensions = [(a,b) | a <- [0,1..(pred (fst dimensions))], 
    b <- [0,1..(pred (snd dimensions))]]
elemAt table (x,y) = (table !! y) !! x


