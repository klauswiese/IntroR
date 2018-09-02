# IntroR
CURSO BÁSICO DE ENTORNO DE ANÁLISIS ESTADÍSTICO “R”

# I. Objetivo.

Proporcionar los elementos básicos para trabajar con el entorno de análisis estadístico R orientado a los procesos de investigación.

# II. Breve descripción del programa.

El programa del curso comienza con una introducción al entorno de análisis estadístico R, desde su instalación hasta el uso del IDE Rstudio para su sencillo manejo. Se busca ambientar a los estudiantes a partir del desarrollo de ejercicios  usando datos relevantes para la investigación, usando como apoyo el conocimiento y formación de los participantes. 

La temática se divide en 1) análisis descriptivo, 2) pruebas de hipótesis y 3) análisis de regresión. A lo largo del curso abordaremos cada tema desarrollando los bases teóricas  por medio de exposiciones magistrales, lecturas asignadas y se reforzará su aprendizaje a través de la ejecución de ejercicios prácticos orientados a estudios de caso en diferentes estadios de la investigación (diseño, exploratoria, análisis y presentación de resultados), donde los estudiantes podrán ver las diferentes dimensiones de R y su aplicación a las problemáticas planteadas para la realidad nacional.

El curso finalizará con los estudiantes desarrollando un estudio de caso en el cual serán asistidos por el instructor y finalmente presentarán sus resultados en ponencias de 10 minutos de duración.

# III. Cronograma y dosificación de contenidos

## Jornada Uno

Introducción a R
a) Instalación 
b) Primeros pasos en un ambiente de programación tipo CLI 
c) Entrada y gestión de datos


## Jornada Dos

Estadística descriptiva
a) Medidas de tendencia central
b) Medidas de dispersión

## Jornada Tres

Estadística inferencial
a) Paramétricas
1. t de student
2. ANOVA

b) No paramétricas
1. Wilcoxon
2. Kruskal - Wallis 

## Jornada Cuatro

Análisis gráfico
a) Tipos de gráficos
b) Utilidad de gráficos
c) Generación de gráficos

Análisis de regresión 
a) Tipos de regresión
b) Criterios para evaluar un modelo de regresión

## Jornada Cinco

Desarrollo personal
Aplicación de conocimientos adquiridos a datos de cada estudiante con la asistencia del instructor. Finalizando con la presentación de los resultados encontrados por cada estudiante.

# IV. Bibliografía.


1. P. Dalgaard, Introductory Statistics with R. Springer, New York 2002.

2. R Development Core Team (2009). R: A Language and Environment for Statistical Computing. R Foundation for Statistical Computing, Vienna, Austria. ISBN 3-900051-07-0, URL http://www.R-project.org/.

3. M. Henry y H. Stevens . A Primer of Ecology with R. Springer-Verlag, Berlin, 2009.

4. P. Teetor. R Cookbook: Proven Recipes for Data Analysis, Statistics, and Graphics. Orreilly, 2011.

5. B. Shahbaba. Biostatistics with R: An Introduction to Statistics Through Biological Data. Springer-Verlag, Berlin, 2012.

6. H. Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2009.

# Instalación

## Windows 

La versión 3.5.1 es la más reciente y tiene el nombre código Feather Spray, esta corresponde a Julio de 2084. El equipo desarrollador de R esta en constante avance con las actualizaciones de la aplicación pudiendo tener varias actualizaciones al año. El instalador ejecutable de la versión más reciente puede ser descargado de forma gratuita desde la dirección:

```
https://cloud.r-project.org/
```

Al hacer la descarga obtendrán el archivo \textbf{R-3.5.1-win.exe} que tiene 62 mega-bytes de tamaño, para completar la instalación se da doble clic sobre el instalador y seleccionar  las opciones de su preferencia (carpeta de instalación y otros), aquí debemos seleccionar la arquitectura de nuestra computadora (32 bits / 64 bits).

## Linux (Ubuntu)

Para instalar R se debe ejecutar, en orden, los siguientes comandos desde la consola:

1. Agregar repositorio CRAN a la lista de repositorios de Ubuntu

 ```
 deb http://cran.r-project.org/bin/linux/ubuntu trusty/
 ```
 
 la palabra trusty hace referencia a la versión 14.04 de Ubuntu, si posee otra versión cambie ese nombre por el nombre de su distribución.
 
 2. Habilitar clave que nos de la posibilidad de leer los archivos de el CRAN que recién agregamos:
 
 ```
gpg --keyserver subkeys.pgp.net --recv-key E2A11821
gpg -a --export E2A11821 | sudo apt-key add -
```

 3. Actualizar sistema, para que el repositorio de descarga sea agregado
 ```
 sudo apt-get update
 ```
 4. Instalar R
 ```
 sudo apt-get install r-base
```
