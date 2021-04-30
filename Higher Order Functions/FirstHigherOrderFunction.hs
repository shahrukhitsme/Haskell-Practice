main = do
    print $ app add1 2
    print $ app add2 2
    print $ (\x -> x+3) 2

add1 :: Int -> Int
add1 x = x+1

--anonymous function
add2 = (\x -> x+2)

app :: (a -> b) -> a -> b
app f x = f x