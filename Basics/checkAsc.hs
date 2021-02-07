--Check whether a list is in ascending order or not

main = putStrLn $ boolToStr $ isAsc [1,2,3,4,5]

isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (a:b:arr) = (a<b) && (isAsc (b:arr))

boolToStr :: Bool -> String
boolToStr True = "TRUE"
boolToStr False = "FALSE"