# Tipos de datos en R

## Objetos en R

Hasta ahora nos hemos dedicado a escribir algunas instrucciones para que R las ejecute. A lo largo del curso aprenderemos muchas funciones, sin embargo existen aspectos críticos que debemos saber antes de seguir avanzando.

Lo primero que debemos saber (y que nos evitará que surjan en la consola los nunca agradables errores) es que todos los elementos que maneja R son **objetos**: un valor numérico es un objeto, un vector es un objeto, una base de datos es un objeto, una función es un objeto, un gráfico es... un objeto.

En este laboratorio exploraremos algunos tipos de objetos y sus propiedades básicas para trabajar en R.

### Propiedades de los objetos

1. Los objetos están compuestos por uno o más elementos. Los elementos pueden ser caracteres alfabéticos y/o numéricos. En este curso, los elementos serán considerados datos.

2. R guarda los objetos en la memoria activa del ordenador con un nombre especifico. Para ello, asignamos
un valor a un objeto mediante el uso del operador `<-`.

Generemos un objeto de nombre Asignatura que contendrá las palabras _Metodos_ y _estadisticos_. En el script de RStudio debemos escribir lo siguiente y luego presionar <Ctrl + enter>:


```r
Asignatura<-c("Metodos", "estadisticos")
```

Ahora escribamos _asignatura_ y veamos que sucede. En tu script y consola debería aparecer lo siguiente: 

\begin{figure}

{\centering \includegraphics[width=0.7\linewidth]{imagenes/imagen3_asignatura} 

}

\caption{Pantalla principal Rstudio}(\#fig:rmark3)
\end{figure}

Es momento de felicitarnos a nosotros mismos, ya que acabamos de cometer uno de los errores más recurrentes y básicos que se cometen al trabajar en R. ¿Qué fue lo que sucedió?. R discrimina entre letras mayúsculas y minúsculas para el nombre de un objeto, por lo cual no es lo mismo escribir _asignatura_ que _Asignatura_.

Ahora escribamos _Asignatura_ y veamos que sucede:


```r
Asignatura
```

```
## [1] "Metodos"      "estadisticos"
```

**IMPORTANTE**: Los datos de caracteres siempre deben estar encerrados entre comillas (`""`) y los datos son concatenados (combinados) utilizando el comando `c()`

## Tipos de Objetos

En este curso nos ocuparemos de aquellos objetos que R utiliza para representar datos: valores, vectores, y dataframes.

### Objetos de valores numéricos

El objeto mas simple que podemos crear es aquel con contiene solamente un numero real. Generaremos un objeto de nombre `x` con el valor `5`:


```r
x<-5
x
```

```
## [1] 5
```

R permite realizar un sin número de operaciones algebraicas con nuestros objetos. Dichos operaciones
incluyen la adición (`+`), sustracción (`-`), multiplicación (`*`), división (`/`) y potenciación (`^`).


```r
# crear objeto a
a<-15
a
```

```
## [1] 15
```

```r
# crear objeto b
b<-2
b
```

```
## [1] 2
```

```r
# sumar a + b
a+b
```

```
## [1] 17
```

```r
# restar b-a
b-a
```

```
## [1] -13
```

```r
# restar a - b
a-b
```

```
## [1] 13
```

```r
# otras operaciones
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

Otras funciones matemáticas de importancia para nuestro curso son: la raíz cuadrada (`sqrt`), función
exponencial (`exp`) y función logarítmica natural (`log`).


```r
# Raíz cuadrada
sqrt(9)
```

```
## [1] 3
```

```r
# exponencial
exp(2)
```

```
## [1] 7.389056
```

```r
# logaritmo
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

<iframe src="DCL/intro_1.html" frameborder="0" scrolling="no" style="width:100%;height:360px"></iframe>


**IMPORTANTE**: Los datos son concatenados (combinados) utilizando el comando `c()`  

#### Funciones para generar vectores

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
 


### Data frames

Un `data.frame` es un tipo especial de objeto que permite organizar diferentes tipos de vectores
(alfanuméricos). La estructura de un `data.frame` es muy similar a una hoja de datos, en donde la información
se organiza en filas (observaciones de cada vector) y columnas (vector).

El siguiente ejemplo nos muestra como crear un `data.frame` llamado `Notas` a partir de los datos obtenidos de una muestra a 8 alumnos, para cada una de las cuales se ha registrado su edad, género y nota obtenida en la primera prueba parcial del curso Métodos Estadísticos.

Primero, debemos generar los 3 vectores (variables) que utilizaremos para crear nuestro `data.frame`:


```r
edad <- c(22, 21, 21, 25, 19, 22, 23,24)
genero <- c("M","F","F","M","M","F","F","M")
nota<-c(3.4,6.0,5.1,4.5,4.6,6.1,4.0,4.5)
```

A continuación, generaremos el `data.frame` llamado `Notas`. Es importante tener presente que el lenguaje de R es bastante intuitivo, a tal punto que la función que permite generar un data.frame es `data.frame ()`


```r
Notas <- data.frame(edad,genero,nota)
```


Un fuerte aplauso para nosotros mismos, acabamos de generar nuestro primer `data.frame`. Para corroborar si
lo hicimos bien, y al mismo tiempo ver su contenido, simplemente tenemos que llamarlo su nombre:


```r
Notas
```

```
##   edad genero nota
## 1   22      M  3.4
## 2   21      F  6.0
## 3   21      F  5.1
## 4   25      M  4.5
## 5   19      M  4.6
## 6   22      F  6.1
## 7   23      F  4.0
## 8   24      M  4.5
```

En caso de que quisiéramos saber la estructura de nuestro data.frame, podemos utilizar la función:
`str()`


```r
str(Notas)
```

```
## 'data.frame':	8 obs. of  3 variables:
##  $ edad  : num  22 21 21 25 19 22 23 24
##  $ genero: Factor w/ 2 levels "F","M": 2 1 1 2 2 1 1 2
##  $ nota  : num  3.4 6 5.1 4.5 4.6 6.1 4 4.5
```

R nos acaba de confirmar que Notas es un data.frame de tres variables con 8 observaciones cada una. R
también nos informa además de que dos variables son numéricas y la tercera, el genero, es un factor con dos
valores, “F” y “M”.

En caso de que quisiéramos que R nos entregue el nombre de las variables contenidas en el Notas podemos
utilizar la función `names()`:


```r
names(Notas)
```

```
## [1] "edad"   "genero" "nota"
```

### Valores Perdidos
En algunos casos los elementos que componen un objeto son desconocidos. En estos casos, debemos
especificar que el elemento desconocido se encuentra "not available" (`NA`) , entonces a esa observación le
asignamos el valor especial `NA`. Es importante tener presente que una operación con elementos `NA` resulta
`NA`, ya que por defecto R no incluyen la especificación que omite o remueve las observaciones faltantes.
Para estar seguros de esto, podemos generar un nuevo `data.frame` llamado `Notas1` a partir de los datos
obtenidos de una muestra a 8 alumnos.


```r
edad1 <- c(22, 21, 21, 25, 19, 22, 23,24)
genero1 <- c("M","F","F","M","M","F","F","M")
nota1<-c(3.4,6.0,5.1,4.5,4.6,6.1,4.0,NA)
Notas1 <- data.frame(edad1,genero1,nota1)
```

Apliquemos una operación básica a la información contenida en Notas1. Podemos estimar la nota promedio
de los 8 alumnos, para ello utilizaremos la función `mean()`, la cual exploraremos más adelante en nuestro
curso:


```r
mean(Notas1$nota1)
```

```
## [1] NA
```

Lo que obtuvimos como resultado fue `NA`. Esto se debe a que no le especificamos a R que debe omitir los
NAs en nuestro data.frame. Una forma de solucionar este problema es utilizar la operación `na.rm=TRUE`, la
cual especifica que la operación se efectué con los datos válidos excluyendo los NAs:


```r
mean(Notas1$nota1, na.rm=TRUE)
```

```
## [1] 4.814286
```

Magia! Con una simple orden acabamos de solucionar un simple pero doloroso problema.
