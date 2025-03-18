# Ejercicio 2 
### d. cantDivisoresPrimos :: Int ->Int

Dado un entero positivo devuelve la cantidad de divisores primos

Entonces: <br>
<li>Si es 0 o negativo : retornar 0
<li>Si es mayor o igual a 1 : <br>
Tengo que checkear si es primo o no.
Si es primo retornar 1 (porque los divisores primos son el mismo número. Por ejemplo, el único divisor primo de 3 es 3).
Si no es primo, hay que incrementar en uno el result *sii un número entre 2 y n/2 es primo Y divide a n*

Entonces necesito crear una función aux esPrimo:

Un numero entero positivo va a ser primo si es divisible únicamente por 1 y por si mismo. No hace falta checkear TODOS los números menores a n sino sólo hasta raíz(n) por la criba de Eratóstenes o teorema de Honi

