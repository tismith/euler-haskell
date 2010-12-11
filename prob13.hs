import System.Environment (getArgs)

main = do 
    f <- getArgs
    raw <- readFile (head f)
    putStrLn $ show $ take 10 $ show $ sum $ map (read) $ lines raw

