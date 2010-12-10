import System.Environment (getArgs)
import Data.Char (isNumber, digitToInt)

main = do 
    f <- getArgs
    raw <- readFile (head f)
    putStrLn $ show $ maximum $ sum5 $ map (digitToInt) $ filter (isNumber) raw

sum5 x 
    | length x < 5 = []
    | otherwise = (product $ take 5 x) : (sum5 $ tail x)

