--Check whether there exists a path from a to be in a graph

main = putStrLn $ boolToString $ hasPath [(1,2),(2,3),(3,2),(4,3),(4,5)] 1 3

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] x y = x==y
hasPath xs x y
    | x==y = True
    | otherwise =
        let xs' = [(n,m) | (n,m) <- xs, n/=x] in
        or [ hasPath xs' m y | (n,m) <- xs, n==x]

boolToString :: Bool -> String
boolToString True = "TRUE"
boolToString False = "FALSE"