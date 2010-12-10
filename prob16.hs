import Data.Char (digitToInt)

main = do
    putStrLn $ show $ sum $ map (digitToInt) $ show (2^1000)

