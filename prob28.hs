module Main where 

main = do
    --putStrLn $ show $ foursum 3 2
    --putStrLn $ show $ foursum 3 2
    --putStrLn $ show intervals
    putStrLn $ show result

intervals = [source | source <- [2..1000], even source]
--intervals = [source | source <- [2..4], even source]

--ring sum, top right corner
foursum (sum, topright) interval = 
    let start = topright + interval 
        in
    (sum + 4*start + 6*interval, start + 3*interval)

result = fst $ foldl (foursum) (1, 1) intervals
--result = foldl (foursum) (1, 1) [2,4]
