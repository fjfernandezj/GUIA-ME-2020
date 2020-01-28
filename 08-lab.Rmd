# Estadística inferencial: Regresión lineal y correlación

Antes de comenzar con este práctico es importante tomarnos un tiempo para recordar que la estadística comienza con un problema, continúa con la toma de datos, sigue con la inspección y visualización de los datos y termina con el análisis de los mismos. Esto nos permitirá sacar conclusiones fundamentadas sobre nuestro problema inicial.

En el presente curso hemos establecido una receta de trabajo al momento de realizar inferencias estadísticas:

* **Paso 1: Graficar nuestros datos.** El objetivo es evaluar posibles tendencias en nuestros datos.

* **Paso 2: Definir la hipótesis que queremos poner a prueba.** Debemos establecer la hipótesis nula y la(s) alternativa(s).

* **Paso 3: Transformar la hipótesis en un modelo (prueba) estadístico.**El modelo estará determinado por nuestras variables (importante diferenciar entre variables continuas y categóricas).

* **Paso 4: Evaluar los supuestos del modelo.** Es relevante para saber si podemos (o no) utilizar métodos paramétricos. 

* **Paso 5: Interpretar los resultados del modelo.** Debemos evaluar el valor de probabilidad asociado a la prueba estadística.

## Modelos Lineales generales
En muchas oportunidades estaremos interesados en saber como el comportamiento de una variable, o un conjunto de variables, impacta sobre otra. El objetivo es entender el grado de asociatividad y/o la posible relación funcional entre las variables.

Los modelos lineales generales describen una variable respuesta ($y$) en términos de todos sus factores contribuyentes ($xβ$) en una combinación lineal, mientras que también incorpora el aporte de error ($e$).

\begin{equation} 
  Y  = β_{0} + β_{1}X_{1} + e 
  (\#eq:ecuacion1)
\end{equation}

Esta clase de modelos estadísticos incluye la regresión lineal, regresión múltiple, ANOVA y ANCOVA.
 
En R, todos los análisis univariados (una variable respuesta) de este tipo se ajustan utilizando una única función `lm()`. 

El análisis de regresión lineal se usa para explicar o modelar la relación entre una variable continua `Y`, llamada variable respuesta o variable dependiente, y una variable continua `X~1~`, llamada variable explicativa o independiente. Cuando hay más de una variable continua explicativa (X~1~, X~2~,… X~p~) el análisis se denomina **regresión múltiple**.

Si la variable explicativa es categórica en vez de continua,  entonces el análisis a realizar es un **ANOVA** (en inglés) o análisis de varianza de 1-vía. Cuando hay dos variables categóricas explicativas, el análisis se denomina **análisis de varianza de 2-vías**. Es fácil imaginar como se llamará el análisis en caso de tener 3 o más variables categóricas explicativas, ¿no?.

Por ultimo, es posible que en un mismo análisis aparezcan variables explicativas tanto continuas como categóricas, y en este caso el análisis pasaría a denominarse análisis de **covarianza** o **ANCOVA**. 


### Correlación producto-momento de Pearson

Antes de comenzar la construcción de modelos lineales complejos, es importante observar la relación de datos para comprender cómo interactúan las diferentes variables. La correlación producto-momento de Pearson (para simplificarnos la vida hablaremos de correlación de Pearson)  determina si existe asociación entre dos variables continuas. Dicho de otra forma, la correlación de Pearson analiza si dos variables continuas cambian de forma simultánea (están relacionadas).

El coeficiente de correlación de Pearson (r) es una medida de la fuerza de una asociación lineal entre dos variables continuas. El coeficiente de correlación de Pearson puede tomar un rango de valores de +1 a -1. Un valor de 0 indica que no hay asociación entre las dos variables. Un valor mayor que 0 indica una asociación positiva; es decir, a medida que aumenta el valor de una variable, también lo hace el valor de la otra variable. Un valor menor que 0 indica una asociación negativa; es decir, a medida que aumenta el valor de una variable, el valor de la otra variable disminuye.

Es importante destacar que la correlación de Pearson no tiene en cuenta si una variable se ha clasificado como una dependiente o independiente. Trata a todas las variables por igual. Incluso, las variables pueden estar medidas en diferentes unidades.

Empleamos la correlación de Pearson para determinar si dos variables cambian de forma independiente (H~0~) o entonces, de forma alternativa, de forma conjunta (H~1~). 

Recuerden importar la nueva base de datos data.csv!

Trabajaremos con la superficie de territorio plantada con Vid y con Olivo. Recordemos que nunca debemos comenzar un análisis estadístico con una prueba estadística, siempre debemos comenzar con una figura de nuestros datos!!!
