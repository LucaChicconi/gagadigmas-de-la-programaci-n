import Prelude hiding (Maybe,Nothing,Just,Either,Left,Right)
data Maybe a = Nothing | Just a
data Either a b = Left a | Right b

inverso :: Float -> Maybe Float
inverso x | x == 0 = Nothing
          | otherwise = Just $ 1/x

aEntero :: Either Int Bool -> Int
aEntero (Left x) = x
aEntero (Right b) | b = 1
                  | otherwise = 0
