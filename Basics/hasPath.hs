--Check whether there exists a path from a to be in a graph

main = putStrLn $ boolToString $ hasPath [(1,2),(2,3),(3,2),(4,3),(4,5)] 1 3

hasPath :: [(Int, Int)] -> Int -> Int -> Bool
hasPath [] x y = x==y
hasPath (a, b):arr source destination
    | (a==source && b==destination) = True
    | a==source = hasPath ((a,b):arr) b destination
    | otherwise = False

boolToString :: Bool -> String
boolToString True = "TRUE"
boolToString False = "FALSE"