
oneHundred = [1..100]
sumOfSquares = sum (map (^2) oneHundred)
squareOfSum = (sum oneHundred) ^ 2

main = do putStrLn (show (squareOfSum - sumOfSquares))

