limpiar :: Eq char => [char] -> [char] ->[char]
limpiar [] (y:ys) = y:ys
limpiar _ [] = []
limpiar (x:xs) (y:ys) |  y `elem` (x:xs) = limpiar (x:xs) ys
                      |  otherwise = y:limpiar (x:xs) ys

difPromedio :: [Float] -> [Float]
difPromedio xs = map (\ x -> x - promedio) xs
    where 
        promedio = sum xs / fromIntegral (length xs)

todosIguales :: [Int] -> Bool
todosIguales [] = True
todosIguales (x:xs) | x `elem`  xs = False
                    | otherwise = todosIguales xs