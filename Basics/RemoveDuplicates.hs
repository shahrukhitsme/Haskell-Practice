--Remove duplicates from a list

main = print $ nub [1,2,2,3,2,3,4,5,3,3,4,5]

nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
    | x `exists` xs = (nub xs)
    | otherwise = x : (nub xs)

exists :: (Eq a) => a -> [a] -> Bool
exists _ [] = False
exists e (x:xs) = (e==x) || (exists e xs)