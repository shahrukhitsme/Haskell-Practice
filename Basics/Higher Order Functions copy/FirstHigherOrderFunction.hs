add1 :: Int -> Int
add1 x = x+1

app :: (a->b) -> a-> b
add f x = f x

main = putStrLn $ toString $ app add1 2