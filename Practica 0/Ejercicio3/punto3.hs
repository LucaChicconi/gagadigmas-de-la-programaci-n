import Data.Either
import Data.Maybe

inverso :: Float -> Maybe Float
inverso x | x == 0 = Nothing
          | otherwise = Just $ 1/x

aEntero :: Either Int Bool -> Int
aEntero (Left x) = x
aEntero (Right b) | b = 1
                  | otherwise = 0

aEnteroBis :: Either Int Bool -> Int
aEnteroBis x = do
    if isLeft x
        then fromLeft 0 x
        else if fromRight  False x
            then 1
            else 0