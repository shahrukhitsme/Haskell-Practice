--Check whether a element exists in a list or not

main = let
    a = 2
    arr = [1,2,3,4,5]
    in 
    putStrLn $ boolToString $ exists a arr

exists :: (Eq a) => a -> [a] -> Bool
exists _ [] = False
exists e (x:xs) = (e==x) || (exists e xs)

boolToString :: Bool -> String
boolToString True = "TRUE"
boolToString False = "FALSE" 