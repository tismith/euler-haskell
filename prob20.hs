import Data.Char (digitToInt)

main = do
    putStrLn $ show $ sum $ map (digitToInt) $ show $ factorial 100

factorial 0 = 1
factorial x = x * (factorial (pred x))
