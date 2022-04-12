# **Reto Hash**

Proscai - 12/04/2022

Diego Aragon Duarte

### Análisis

Antes de iniciar el problema, me tome un momento para analizar el planteamiento y cuales eran nuestros datos para conocer el resultado solicitado, para este caso necesitábamos conocer el para recibido a través de la función &quot; **hash**&quot;, sabemos que debe contener un string y este string debe constar de 10 caracteres entre los cuales pueden repetirse u omitirse y darnos el resultado de &quot; **290460476046687**&quot;.

Así que una vez sabido esto, analice la función hash un momento en la cual contamos con la variable &quot; **seed**&quot;, la cual se está inicializando con un valor de **47** y es una variable mutable, dentro de la cual esta semilla estará dentro de una iteración por cada carácter de la palabra ingresada, donde nos da una fórmula en la cual el valor de la &quot; **seed**&quot; se multiplica por &quot; **19**&quot; y se suma con la distancia entre dos índice la cual es el primer índice del parámetro ingresado hasta el último índice de la iteración, lo cual nos da una variación entre [**893…905**] dependiendo del carácter iterado.

### Resolución

Una vez conocido la entrada a enviar, cree un script de playground, me puse a probar y conocer los valores de cada uno de los caracteres permitidos dentro de &quot; **diccionario**&quot;, por lo cual cree una pequeña función para calcular cada una de las entradas, ya que contamos con **13 caracteres** dentro del diccionario y el resultado requeridos es de **10 caracteres** por lo cual en este número nos da las combinaciones posibles de &quot; **137858491849**&quot; por lo cual la mejor práctica es mapear entre todas las combinaciones posibles el resultado de palabras que nos de el numero solicitado al inicio del ejercicio, pero aquí viendo el total de combinaciones posibles, el total de procesos que debe completar una función para tener las permutaciones y que no soy un experto en permutaciones decidí probar por medio de &quot; **hardcoding**&quot; ir probando el patrón para llegar al resultado, digamos que pasaba a la función &quot; **hash**&quot; la cadena de &quot; **aaaaaaaaaa**&quot; los resultados de cada iteración se mantenían al mismo valor, pero si en la cadena cambiábamos un carácter &quot; **aaaaaaaaab**&quot; ya había una variación de [**893 - 894**] ya que entre un carácter fuera diferente al siguiente ya había un cambio exponencial del valor de cada iteración entre 1.2x a 2x del valor anterior.

Entonces ahí deduje que debe haber una variación entre las últimas letras del diccionario y las primeras letras para tener una variación exponencial en el valor total que retorne nuestra función de hash.

Por lo cual fui probando palabras que puedan tener 10 caracteres con variación entre las primeras y últimas palabras, así que fui agregando letra por letra para ir teniendo el acumulado total deseado, hasta llegar al resultado con la palabra &quot; **perseverar**&quot;.

En donde mi forma de resolverlo no fue la manera más práctica pero el ejercicio tenía un poco de tricky, ya que teniendo en cuenta todas las posibilidades de combinaciones y que cualquier dispositivo llegaría a bloquear el procesador con tantas ejecuciones hasta llegar al resultado deseado, entonces mi forma de resolverlo fue de la manera lógica matemática, sumando cada carácter entre las variaciones exponenciales hasta ir llegando a resultados similares y variando letras para darme el resultado final.

**Tiempo total: 21 minutos**.