
main = do
    putStrLn $ show answer

answer = let (a,b,c) = triplet in
    a*b*c

triplet = head [(a,b,c) | a <- [1..1000], b <- [1..1000], c <- [1..1000], a + b + c == 1000, (a*a) + (b*b) == (c*c)]


