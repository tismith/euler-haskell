
numbers = [x | x <- [1..999], mod x 3 == 0 || mod x 5 == 0] 
main = do 
        let result = show (sum numbers)
        putStrLn result
