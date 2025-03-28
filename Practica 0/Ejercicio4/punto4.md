# Ejercicio 4 #
## a) limpiar :: String->String->String

Éste fue el más tranqui
<p>
Recordar que un String es en realidad una secuencia de Char, es decir [Char].

Entonces podemos usar la gloriosa función de Haskell llamada <b>elem</b> que nos permite corroborar si un elemento está en una lista.

El ejercicio entonces es muy fácil, hay que ver por cada elemento de la segunda [Char] si está presente en la primera [Char].
<b>
<details> 
  <summary>SPOILER : Linea clave de código </summary>
   y `elem` (x:xs) = limpiar (x:xs) ys
   
   ¿elem tendrá alguna maña extra que tendremos que revisar? 
   Sólo lo vas a poder ver si hacés el código por tu cuenta ;)
</details>
</b>
De ahí en adelante espero que puedan terminar el ejercicio
</p>

## b) difPromedio ::[Float] -> [Float]
<p>Más dificil de lo que esperaba, me mandé de una y cometí un error.

El concepto es muy fácil : 
<li> Calcular promedio
<li> Devolver una lista que en cada posición tiene el elemento de esa posición en la lista original - el promedio de la lista original
<b>
<details> 
  <summary>SPOILER : Linea clave de código </summary>
    Sólo tenés que calcular el promedio una vez. Pensalo. Una vez, nada más.
</details>
</b>
</p>

# c) todosIguales :: [Int] → Bool
<p> Este es una papa. <br>
Vos si querés podes pensarlo al revés, pero para mí en una lista vacía todos los elementos son iguales

<b>
<details> 
  <summary>SPOILER : Linea clave de código </summary>
    x `elem`  xs <br>
    ¿Qué significa eso?
</details>
</b>

</p>