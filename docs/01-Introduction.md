<script src="https://cdn.datacamp.com/datacamp-light-latest.min.js"></script>

# Software estadístico R {#intro}
[R](https://cran.r-project.org) es un programa estadístico _open source_ de gran versatilidad que permite analizar una amplia gama de problemas cuantitativos. Si bien R incorpora un lenguaje de programación que puede ser extremadamente complejo, vale la pena familiarizarse con esa herramienta que puede llegar a ser muy útil en el futuro, tanto dentro como fuera de la academia.  

## Aspectos básicos de R 
 
1. R distingue mayúsculas y minúsculas. 
2. Para asignar contenido a un objeto usamos `<-`. Por ejemplo, `x <- 10` asigna a `x` el valor `10`. En lugar de `<-` también podemos usar `=`. 
3.Para ver el contenido de un objeto simplemente escribimos su nombre. 
4. Para obtener ayuda usamos el comando help. Por ejemplo, `help(mean)` para obtener ayuda sobre el comando mean que calcula la media. 
5. El GUI o interfaz gráfica del R tiene dos partes principales: la consola y el script. 

[poner foto acá]

La _**consola**_ es el corazón de R, allí podemos pedirle cosas y es donde se nos entregan los resultados. También nos avisa de posibles errores (generalmente en color rojo). La consola es lo primero que observamos cuando abrimos el programa. Cuando la consola tiene el cursor `>` significa que le podemos dar comandos para ejecutar. Si es que tiene el símbolo `+` quiere decir que nos falta completar el comando anterior. 
 
Un _**script**_ corresponde a una hoja para escribir comandos. Nos sirve para escribir solo los comandos, y cuando seleccionamos y presionamos _<Ctrl + R>_ (juntos) se ejecuta el comando que hemos escrito y los resultados se visualizaran en la consola Dependiendo del sistema operatio utilizado, la combinación podría ser <Ctrl +Enter>.  El script es práctico por que no solo podemos escribir comandos sino también notas personales. Las notas tienen que estar precedidas por el `#`.

## R Studio 

[RStudio](http://www.rstudio.org) es una interfaz que permite acceder de manera sencilla a todas las funciones de R. Para utilizar RStudio se requiere haber instalado R previamente. La instalación de  RStudio  se puede realizar  desde la [página oficial del programa](http://www.rstudio.org).


### Conociendo a Rstudio

Una vez instalados R y RStudio procedemos a ejecutar el programa RStudio desde cualquiera de los iconos que genera y se mostrará la siguiente pantalla: 
 
 
[Figura 2]

Esta pantalla está dividida en tres partes: 
 
1. La ventana de la izquierda donde está el prompt “>” , llamada Consola, es el espacio de trabajo. 
 
2. La ventana de la derecha se divide en dos: 
* En la ventana superior derecha se encuentra el historial de objetos almacenados en memoria. Desde esta ventana también podemos:            
a) Limpiar nuestro historial             
b) Importar datos             
c) Muestra los comandos y funciones implementadas de los informes con los que se han trabajado. 
 
3. En la ventana inferior de la derecha RStudio muestra el directorio de trabajo, los gráficos que se van generando, paquetes para cargarlos e instalarlos directamente, ayuda y un visor HTML. Estas pestañas se irán describiendo a lo largo del documento

## Trabajemos en RStudio

### Objetos de Datos

R es un lenguaje orientado a trabajar con objetos de datos (numéricos, caracteres y lógicos), los cuales se guardan en la memoria activa del ordenador (consola). Dichos objetos pueden ser: 
 
1. _Escalares_: Números reales que sirven para describir un fenómeno físico. 
2. _Vectores_: Lista ordenada de elementos, principalmente números reales. 
3. _Factores_: Es un tipo especial de vector que almacena datos de caracteres en forma de variables cualitativas. 
 
Para familiarizarnos con la sintaxis de R, escribamos la frase "Metodos estadisticos". En la consola de RStudio debemos escribir lo siguiente y luego presionar <Ctrl + Enter>:


```r
x <- "Metodos"
```

 Ahora escribamos x para ver que sucede: 


```r
x
```

```
## [1] "Metodos"
```
 
Lo que acabamos de hacer es asignar la palabra  Metodos al objeto `x` mediante el uso del operador `<-` Ahora, asignaremos la palabra estadisticos al objeto `y`:


```r
y <- "estadisticos"
y
```

```
## [1] "estadisticos"
```

Por último, combinaremos las dos palabras y las almacenaremos en un nuevo objeto que llamaremos `frase`:


```r
frase <- paste(x,y)
frase 
```

```
## [1] "Metodos estadisticos"
```

		
**IMPORTANTE**: Los datos de caracteres siempre deben estar encerrados entre comillas ("") 

### Datos Numéricos

El objeto mas simple que podemos crear es aquel con contiene solamente un numero real. Para ello, asignamos un valor a un objeto mediante el uso del operador `<-` 
 
Generaremos un objeto de nombre `x` con el valor `5`: 


```r
x<-5 
x
```

```
## [1] 5
```

R permite realizar un sin numero de operaciones algebraicas con nuestros objetos. Dichos operaciones incluyen la adición (+), sustracción (-), multiplicación (*), división (/) y potenciación (^).


```r
a<-15
a
```

```
## [1] 15
```


```r
b <- 2
b
```

```
## [1] 2
```


```r
a+b
```

```
## [1] 17
```


```r
b-a
```

```
## [1] -13
```


```r
a-b
```

```
## [1] 13
```


```r
(a+b)/a
```

```
## [1] 1.133333
```


```r
(a*b)/(b^b)
```

```
## [1] 7.5
```

Otras funciones matemáticas de importancia para nuestro curso son: la raíz cuadrada (sqrt), función exponencial (exp) y función logarítmica natural (log). 
 

```r
sqrt(9)
```

```
## [1] 3
```


```r
c <- 9
c
```

```
## [1] 9
```
 

```r
sqrt(c)
```

```
## [1] 3
```
 

```r
exp(2)
```

```
## [1] 7.389056
```


```r
log(10)
```

```
## [1] 2.302585
```

### Vectores
Un vector representa una secuencia ordenada de elementos (datos) del mismo tipo. Es posible construir vectores de tipo numérico y caracteres. Para nuestros propósitos, los vectores podrán ser considerados como variables. 
 
Generaremos un vector de nombre `vector1` que contenga tres datos numéricos:


```r
vector1<-c(1,5,7)
vector1
```

```
## [1] 1 5 7
```

Ahora, generaremos un vector de nombre `vector2` que contenga tres caracteres:


```r
vector2<-c("cerezo","peral","vid") 
vector2   
```

```
## [1] "cerezo" "peral"  "vid"
```

Intentemos generar un vector de nombre vector3 a partir de los vectores creados:  
<script src=https://cdn.datacamp.com/datacamp-light-latest.min.js></script>



<div data-datacamp-exercise data-height="300" data-encoded="true">eyJsYW5ndWFnZSI6InIiLCJzYW1wbGUiOiJ2ZWN0b3IxPC1jKDEsNSw3KVxudmVjdG9yMjwtYyhcImNlcmV6b1wiLFwicGVyYWxcIixcInZpZFwiKSBcblxuI2dlbmVyYXIgdmVjdG9yIGxsYW1hZG8gdmVjdG9yMyBhIHBhcnRpciBkZSBsb3MgZG9zIHZlY3RvcmVzIGFudGVyaW9ybWVudGUgY3JlYWRvcyJ9</div>


**IMPORTANTE**: Los datos son concatenados (combinados) utilizando el comando `c()`  

### Funciones para generar vectores

Las funciones `seq` y `rep` nos permiten crear patrones de elementos. `seq` Crea una secuencia de números equiespaciados. Dentro del comando `seq` el comienzo (`from`), el fin (`to`), el espacio entre dos números consecutivos (`by`) o la cantidad de números en la secuencia  (`length`) pueden ser especificados.

Por ejemplo:

```r
seq(from= 2, to= 8, by=2)
```

```
## [1] 2 4 6 8
```


```r
seq(from=2, to= 8,length=3)
```

```
## [1] 2 5 8
```

Por otra parte, el comando `rep` repite un elemento (`x`) una cantidad determinada de veces (`times`) o hasta lograr una longitud especificada (`length.out`).

Por ejemplo:

```r
rep (0,5)
```

```
## [1] 0 0 0 0 0
```


```r
rep(0:2,3)
```

```
## [1] 0 1 2 0 1 2 0 1 2
```


```r
rep(1:2,length.out=7)
```

```
## [1] 1 2 1 2 1 2 1
```
 

You can write citations, too. For example, we are using the **bookdown** package [@R-bookdown] in this sample book, which was built on top of R Markdown and **knitr** [@xie2015].
