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
<br>
b) No entendí un pingo cómo se implementa el Either
<br>
Update 20/3: La función aEntero es una función que puede hacer una cosa o la otra. Creditos a Joako por explicarme el tipo Either
<br>Lo que pasa es que puede : 
<br>**devolverte un entero si el parámetro de entrada es entero**
<br> ó
<br>**Devolverte 1 o 0 si el parámetro es booleano.**
<br> Es como una fusión de funciones, de tipos distintos. La misma requiere de un tipo de datos acorde a esas características.
<br> Acá entra en juego Either (tipo A) (tipo B):
<br> por ejemplo Either Int Bool no es ni Int ni Bool. Es su propio tipo de dato. Como Gogeta, que no es ni 
Goku ni Vegeta <br>
### Ejemplo : Gogeta, sus técnicas y si son de Goku o Vegeta ###

<br> ![alt text](https://i.gifer.com/origin/56/56c0a4ede15d98d5ddd6476b88a9ab78_w200.webp)
<br>
La función **técnica**, en éste ejemplo, necesita que le pasemos un Gogeta **y le digamos si la técnica es de Goku o Vegeta**.
Por ejemplo **técnica (Goku Kamehameha)**
<br> ![alt text](https://media1.tenor.com/m/hiXlfSMxgkUAAAAC/big-kamehameha-gogeta-blue.gif)
<br> O **técnica (Vegeta Big Bang)**
<br> ![alt text](https://static.wikia.nocookie.net/dragonball/images/0/0c/VegetaMajinWMATnv.png/revision/latest?cb=20201225173937) 
<br>
#### No conseguí fotos de Gogeta haciendo un big bang attack pero es parte de su moveset https://dbmoves.fandom.com/wiki/List_of_Gogeta_Moves ####

<br> Un Big Bang Kamehame Ha se puede interpretar como invocar un Big Bang e inmediatamente después un Kamehameha
<br> **técnica (Vegeta Big Bang)**
<br> **técnica (Goku Kamehameha)**
<br> 
![alt text](https://i.pinimg.com/originals/42/f6/8f/42f68f1d6493a9ae60e076ef033a5059.gif)





