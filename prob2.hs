
myFib a b = a:(myFib b (a+b))
resultList = takeWhile (\x -> x < 4000000) (filter (even) (myFib 1 2))
main = do
        let result = sum resultList
        putStrLn (show result)
