import System.Environment (getArgs)

main = do 
    f <- getArgs
    raw <- readFile (head f)
    putStrLn $ take 10 $ show $ sum $ map (read . (take 11)) $ lines raw

