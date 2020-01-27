# Estadística descriptiva: Medidas de tendencia central y dispersión

En el laboratorio anterior aprendimos a graficar la información contenida en nuestra base de datos. El paso siguiente es resumir la información contenida en nuestra base de datos mediante la estimación de medidas de tendencia central y dispersión. 

## Medidas de tendencia central

Las medidas de tendencia central son medidas estadísticas que permiten resumir en un solo valor a un conjunto de valores. Representan un centro en torno al cual se encuentra ubicado el conjunto de los datos. 

Las medidas de tendencia central más utilizadas son: media, mediana y moda. 

**Funciones:**

* `sum(x)`: Suma de los elementos en `x`

* `mean(x)`: Promedio de los elementos en `x`

* `median(x)`: Mediana de los elementos en `x`

* `length(x)`: Número de elementos en `x`

Calculemos el promedio y la mediana de la temperatura ambiental en todas las muestras incluidas en nuestra base de datos:




```r
mean(data$Temperatura)
```

```
## [1] 13.74167
```


```r
median(data$Temperatura)
```

```
## [1] 13.75
```

Estas estimaciones las hemos realizado sobre todas las observaciones contenidas en nuestra variable. Sin embargo, en algunas ocasiones, estaremos interesados en un subconjunto de las observaciones que cumplan con alguna condición de nuestro interés. Por ejemplo, podemos estar interesados en el promedio de la temperatura ambiental en aquellas muestras que provienen solamente de la región del Maule. Para seleccionar aquellas muestras que cumplen con esta restricción podemos generar un subconjunto o subset:

`"Nombre del objeto" <- "base de datos"$ "columna de interés" == "restricción"`


```r
subset_data <- data$Region == "Maule"
subset_data
```

```
##   [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
##  [12] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
##  [23] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE
##  [34]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
##  [45]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
##  [56]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
##  [67] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
##  [78] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
##  [89] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
## [100] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
## [111] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
```

Al revisar el contenido de nuestro objeto llamado `subset_data`, R nos dice cuál o cuáles de las observaciones cumplen (TRUE) o no cumplen (FALSE) con nuestro requerimiento. Ahora, podemos calcular el promedio  de la temperatura ambiental promedio en aquellas muestras que provienen solamente de la región del Maule:


```r
mean(data$Temperatura[subset_data])
```

```
## [1] 14.42667
```

### Operadores lógicos

* `==` Igual a…

* `¡=` No es igual a…

* `>`  Mayor que…

* `<`	 Menor que…

* `>=` Mayor o igual que…

* `<=` Menor o igual que… 

* `|` "o" (al menos una de las condiciones debe ser cierta)

* `&` "y" (ambas condiciones deben ser ciertas)

Para estimar el número de observaciones que cumplen con nuestra condición podemos utilizar la función `length()`:


```r
length(data$Temperatura[subset_data])
```

```
## [1] 30
```

Regresemos a nuestra base de datos. Pasos atrás calculamos el promedio de la temperatura ambiental en todas las muestras incluidas en nuestra base de datos. Eso es un gran paso para describir la variable temperatura ambiental. Sin embargo, la base de datos contiene mucha información adicional que nos permitirá describir de mejor forma la temperatura ambiental registrada en nuestro estudio. Por ejemplo, podríamos preguntarnos si la temperatura ambiental difiere según la región en la que fue medida. Para ello, debemos conocer el promedio de la variable Temperatura para las cuatro diferentes regiones contenidas en la variable Region. Una opción es generar cuatro diferentes “subset”:  


```r
subset1<-data$Region == "Ohiggins"
mean(data$Temperatura[subset1])
```

```
## [1] 15.25667
```


```r
subset2<-data$Region == "Maule"
mean(data$Temperatura[subset2])
```

```
## [1] 14.42667
```


```r
subset3<-data$Region == "BioBio"
mean(data$Temperatura[subset3])
```

```
## [1] 13.54667
```


```r
subset4<-data$Region == "La_Araucania"
mean(data$Temperatura[subset4])
```

```
## [1] 11.73667
```


Afortunadamente, R nos ofrece alternativas mucho más eficientes y elegantes para realizar la misma tarea. Por ejemplo, `tapply()``aplica una función (en este caso mean())  a cada grupo de observaciones de una variable definidos por los niveles de una segunda variable:


```r
tapply(data$Temperatura,data$Region,mean)
```

```
##       BioBio La_Araucania        Maule     Ohiggins 
##     13.54667     11.73667     14.42667     15.25667
```

Incluso, R nos permite guardar nuestros cálculos en forma de objeto: 


```r
Temperatura_regional<-tapply(data$Temperatura,data$Region,mean)
Temperatura_regional
```

```
##       BioBio La_Araucania        Maule     Ohiggins 
##     13.54667     11.73667     14.42667     15.25667
```


## Medidas de dispersión
A diferencia de las medidas de tendencia central, las medidas de dispersión sirven como indicador de la variabilidad de los datos de la variable. Dicho en otros términos, las medidas de dispersión pretenden evaluar en qué medida los datos difieren entre sí. Las medidas de tendencia central más utilizadas son: desviación estándar, varianza y el coeficiente de variación.

**Funciones:**

* `var(x)`   Varianza de los elementos en x

* `sd(x)`    Desviación estándar de los elementos en x

* `range(x)` Rango de los elementos en x

* `min(x)`	 Mínimo valor observado entre los elementos en x

* `max(x)`	 Máximo valor observado entre los elementos en x

Calculemos la desviación estándar y la varianza de la temperatura ambiental en todas las muestras incluidas en nuestra base de datos:


