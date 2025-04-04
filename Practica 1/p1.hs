import Prelude hiding (subtract,foldr,elem,(++),filter)
max2 :: (Int,Int)-> Int
max2 (x,y) | x>= y = x
           | otherwise = y

-- No está currificada, una forma de escribirla currificada sería

max2Curry :: Int -> Int -> Int
max2Curry x y | x>= y = x
              |otherwise = y

normaVectorial :: (Float,Float) -> Float
normaVectorial (x,y) = sqrt (x^2 + y^2)

-- No vendría estando currificada. Las funciones de Haskell siempre toman un único elemento
-- Una función currificada sería en éste caso una que toma un x de tipo Float y devuelve una
-- función de tipo Float -> Float , cuyo comportamiento es tomar un entero
-- elevarlo al cuadrado, sumarle x al cuadrado y aplicarle raíz a todo eso
normaVectorialCurry :: Float -> Float -> Float
normaVectorialCurry x y =  sqrt (x^2 + y^2)

subtract :: (Float -> Float -> Float)
subtract = flip (-)

predecesor :: Float -> Float
predecesor = subtract 1

evaluarEnCero :: (Float -> Float)-> Float
evaluarEnCero = \f -> f 0

dosVeces :: (Float->Float) -> (Float -> Float)
dosVeces = \f -> f . f

dosVecesBis :: (Float -> Float) -> Float -> Float
dosVecesBis f = f . f


flipAll :: [a -> b -> c] -> [b -> a -> c]
flipAll = map flip

flipRaro:: Float-> (Float->Float->Float)-> Float ->Float
flipRaro = flip flip

flipRaro2 :: (Float, Float -> Float -> Float, Float) -> Float
flipRaro2 (x,f,y) = flipRaro x f y


-- Ejercicio 2: Definir la función curry, que dada una función de dos argumentos
-- devuelve su equivalente currificada.
curry::((a,b) -> c) -> (a-> b -> c)
curry f a b = f(a,b)

unCurry :: (a->b->c) -> ((a,b)->c)
unCurry f(a,b) = f a b

-- ¿Se podría definir una función curryN, que tome una función de un número arbitrario de argumentos
-- y devuelva su versión currificada?
-- Pues no mi ciela

-- Esquemas de recursión
-- 3) 1 ) Redefinir usando foldr las funciones sum, elem, (++), filter y map

foldr :: (a->b->b) -> b -> [a] -> b
foldr _ z [] = z 
foldr f z (x:xs) = f x (foldr f z xs) 

suma :: [Int] -> Int
suma [] = 0
suma (x:xs) = x + suma xs

suma' :: [Int] -> Int
suma' = foldr (+) 0  -- f == (+) z = 0

elem :: Eq a => a -> [a] -> Bool
elem _ [] = False
elem a (x:xs) | a == x = True
              | otherwise = elem a xs

elem2 :: Eq a => [a]-> a -> Bool
elem2 (x:xs) a = foldr (\x rec -> x == a || rec) False xs 

-- rec es el resultado de haber hecho el llamado recursivo
-- osea foldr(resto de la lista)

(++) :: [a]->[a]->[a]
(++) xs ys = foldr (:) ys xs

filter :: (a -> Bool) -> [a] -> [a]
filter _ [] = []
filter p (x:xs)=
    if p x
    then x : filter p xs
    else filter p xs

filter2 :: (a -> Bool) -> [a]-> [a]
filter2 p = foldr (\x rec ->if p x then x :rec else rec) []

map' :: (a->b) ->[a] ->[b]
map' f = foldr (\x rec -> f x:rec) [] -- Acordate que rec es el resultado de aplicar la recursión al resto de la lista. Osea para [1,2,3], cuando x == 1, rec es el resultado de la recursión sobre [2,3]

-- ii ) Definir la función mejorSegún , que devuelve el máximo 
-- elemento de la lista según una función de comparación, usando foldr1. Por ejemplo,
-- maximum = mejorSegún (>)


mejorSegún :: (a->a->Bool)-> [a] -> a
mejorSegún c = foldr1 (\x rec -> if c x rec then x else rec)

-- iii) Definir la función sumasParciales, que dada una lista de números devuelve
-- otra de la misma longitud, que tiene ne cada posición la suma parcial de 
-- los elementos de la lista original desde la cabeza hasta la posición actual
-- Por ejemplo sumasParciales [1,4,-1,0,5] devuelve [1,5,4,4,9]

sumasParciales :: (Num a) => [a] -> [a]
sumasParciales = foldl (\ac x -> if null ac then [x] else ac ++ [last ac + x]) [] 

-- iv) Definir sumaAlt, que realiza la suma alternada de los elementos de una
-- lista. Es decir, da como resultado: el primer elemento, menos el segundo
-- mas el tercero, menos el cuarto, etc. Usar foldr

sumaAlt :: Num a => [a] -> a
sumaAlt = foldr (-) 0

-- v) Hacer lo mismo que en el punto anterior, pero en sentido inverso. Pensar qué
-- esquema de recursión conviene usar en éste caso. 

sumaAlt2 :: Num a => [a] -> a
sumaAlt2 = foldl (flip(-)) 0