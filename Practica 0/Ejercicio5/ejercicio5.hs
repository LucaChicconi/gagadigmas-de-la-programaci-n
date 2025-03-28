import Data.Either
import Data.Maybe
import Language.Haskell.TH (derivClause)

data AB a = Nil | Bin(AB a) a (AB a)
instance Show a => Show (AB a) where
    show Nil = "Nil"
    show (Bin izq v der) = "Bin (" ++ show izq ++ ") " ++ show v ++ " (" ++ show der ++ ")"


vacioAB :: AB a -> Bool
vacioAB Nil = True
vacioAB (Bin _ _ _) = False

negacionAB :: AB Bool -> AB Bool
negacionAB Nil = Nil
negacionAB (Bin iz v de) = Bin (negacionAB iz) (not v) (negacionAB de)

productoAB :: AB Int -> Int --Calcular el producto de todos los nodos del árbol
productoAB Nil = 1
productoAB (Bin izq v der) = v * productoAB izq * productoAB der

sumatoriaAB :: AB Int -> Int
sumatoriaAB Nil = 0
sumatoriaAB (Bin izq v der) = v + sumatoriaAB izq + sumatoriaAB der