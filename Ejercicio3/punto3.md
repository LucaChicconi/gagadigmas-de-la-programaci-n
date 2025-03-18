## Ejercicio 3
### Contamos con los tipos *Maybe* y *Either* definidos como sigue:

data Maybe a = Nothing | Just a
data Either a b = Left a | Right b

a) Definir la función inverso:: Float -> Maybe Float que dado un número devuelve su inverso multiplicativo si está definido,o Nothing en caso contrario.

bueno es un <br> 
inverso :: Float -> Maybe Float:
    <br>inverso 0 = Nothing
    <br>inverso x | x < 0 = -x
    <br>          | x > 0 = x 
<br>
b) No entendí un pingo cómo se implementa el Either