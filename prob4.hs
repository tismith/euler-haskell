palindrome :: Show a => a -> Bool
palindrome x = (show x) == ((reverse . show) x)
potentials = [a*b | a <- [100,101..999], b <- [100,101..999], palindrome (a*b)]
main = do
    putStrLn $ show $ maximum $ potentials
