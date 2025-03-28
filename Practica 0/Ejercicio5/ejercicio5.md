# Árboles, Árboles, Árboles...

Nadie en ningún momento me explicó como implementar árboles en Haskell así que para entender tuve que hacer una extensa googleada (Y cometí el pecado de preguntarle a ChatGPT cuando me trabé)


<h2> data AB a = Nil | Bin (AB a) a (AB a)</h2>

<h3>¿Qué significa?</h3>
Significa que definimos el tipo de datos <b>AB</b>. El mismo puede ser Nil ó (por eso el | ) ó 

un nodo raíz (a) con:
<li>Un hijo izquierdo (Otro subárbol AB)</li>
<li>Un hijo derecho  (Otro subárbol AB)</li>

La notación Bin (AB a) a (AB a) se usa únicamente porque se parece más a cómo dibujaríamos un árbol

<br> ![alt text](https://media.geeksforgeeks.org/wp-content/cdn-uploads/binary-tree-to-DLL.png)
<br>

<h2>¿Y cómo se le hace en Haskell?</h2>

Bueno escuchame antes que nada poné esto:

<b>
instance Show a => Show (AB a) where <br>
    show Nil = "Nil" <br>
    show (Bin izq v der) = "Bin (" ++ show izq ++ ") " ++ show v ++ " (" ++ show der ++ ")"</b> <br>

Para que Haskell tenga una manera de mostrarte en consola el árbol. Me lo vas a agradecer después.

Acceder a elementos en un árbol es un poco más complicado de lo que parece.

esVacío :: AB a -> Bool por ejemplo no requiere que accedamos a ningun elemento en particular, solo ver si el árbol es Nil o no.

Con las otras funciones, cagamos.
<h3>sumatoriaAB</h3>
Supongamos que quiero hacer una función sumatoriaAB :: AB Int -> Int que <b> dado un árbol binario de enteros, devuelva la sumatoria de todos sus nodos.</b>

¿La intuición nos dice que sumatoriaAB Nil = 0 no?

Eso nos da un gran caso base.

<b> Ahora bien : ¿La recursión y todo eso cómo la hacemos? </b>

Bueno, acá necesitamos <b>acceder a los subárboles izquierdo y derecho</b>

<br> ![alt text](https://cdn.eldeforma.com/wp-content/uploads/2020/01/maldita-naranja.jpg)
<br> 

La hago corta : <b>sumatoriaAB (Bin izq v der) =  v + sumatoria izq + sumatoria der</b><br>
Con ésta línea de código le decimos a haskell : <br><i>Tomá éste árbol binario que tiene en su raíz un nodo de valor v y ese nodo tiene hijo izquierdo e hijo derecho<br>

Si está bien tipado quiero que sumes el valor de v + sumatoriaAB izq + sumatoriaAB der, ya que izq y der <b>también son árboles binarios</b>. Es ahí donde hacés la recursión. </i>

Ésto anda. Tratá de aplicar lo mismo para productoAB AB Int -> Int

Cuando corras el código de haskell poné esto :

let arbolito = Bin (Bin Nil 2 Nil) 3 (Bin Nil 4 Nil)

para generar un árbol

después hace productoAB arbolito

![alt text](https://images.steamusercontent.com/ugc/403430811345475188/B00A92C868FD57E5497181E713031A9C3DCE0DCD/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false)
