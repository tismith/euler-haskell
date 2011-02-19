import System(getArgs)
import Primes(primes)

main = do 
    args <- getArgs
    putStrLn $ show $ primes !! (pred $  read $ head args)

