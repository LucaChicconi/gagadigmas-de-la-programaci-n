
valorAbsoluto :: Float -> Float
valorAbsoluto x 
        | x < 0 = -x
        | otherwise = x

bisiesto :: Int -> Bool
bisiesto x
        | mod x 4 == 0  = True
        | otherwise = False

factorial :: Int -> Int
factorial 0 = 1
factorial 1 = 1
factorial x = x * factorial(x-1)

-- cantDivisoresPrimos :: Int -> Int


divide :: Int->Int->Int
divide 1 1 = 1
divide x 1 = 1
divide x y
        | mod x y == 0 = 1 + divide x (y-1)
        | otherwise = divide x (y-1)

esPrimo :: Int -> Bool
esPrimo 2 = True
esPrimo x 
        | divide x x == 2 = True
        | otherwise = False

cantidadDivisoresPrimos :: Int -> Int -> Int
cantidadDivisoresPrimos 0 y = 0 --Esto es por simplicidad, en realidad 0 tiene infinitos divisores positivos
cantidadDivisoresPrimos 1 y = 0 -- 1 sólo es divisible por 1 y 1 no es primo (técnicamente)
cantidadDivisoresPrimos x 1 = 0
cantidadDivisoresPrimos x y
                | esPrimo x = 1
                | y > div x 2 = cantidadDivisoresPrimos x (y-1)
                | mod x y == 0 && esPrimo y = 1 + cantidadDivisoresPrimos x (y-1)
                | otherwise = cantidadDivisoresPrimos x (y-1)