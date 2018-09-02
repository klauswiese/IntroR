## Primeros pasos

#Asignación de variable
x <- 1:5
x

length(x)

class(x)

## Generar vectores con funcion "seq"

x1 <- seq(1, 100, by=2)
x1

seq(1, 100, length=10)

## Crear un vector "c"

x <- c(1, 2, 3)
x

x <- seq(1, 100, length=10)
y <- seq(2, 100, length=50)
z <- c(x, y)
z

## Operaciones sencillas con vectores

  x <- 1:5
  x + 1

  x^2

  y <- 1:10
  x + y

  x * y

  x^2 + y^3

## Construir una matriz

  z <- 1:12
  M  <-  matrix(z, nrow=3)
  M

  class(M)

  dim(M)

  summary(M)

## Matrices a partir de vectores: "rbind" y "cbind"

z <- y <- x <- 1:10

M <- cbind(x, y, z)
M

M <- rbind(x, y, z)
M

## Para crear una lista usamos la función "list"

lista <- list(a=c(1,3,5),
              b=c('l', 'p', 'r', 's'),
              c=3)
lista

class(lista)

length(lista)

## Para crear un "data.frame"

  df <- data.frame(x = 1:5,
                   y = rnorm(10),
                   z = 0)
  df

  length(df)

  dim(df)

## Condiciones simples

x <- seq(-1, 1, .1)
x

x < 0

x >= 0

x == 0

x != 0

## Condiciones múltiples


cond  <-  (x > 0) & (x < .5)
cond

cond  <-  (x >= .5) | (x <= -.5)
cond

## Con las condiciones se pueden hacer operaciones

sum(cond)

sum(!cond)

as.numeric(cond)

## Indexado numérico


  x <- seq(1, 100, 2)
  x

  x[1:5]

  x[10:5]

## Indexado con condiciones lógicas


  x[x != 9]

  x[x > 20]

x[x %in% seq(0, 10, .5)]

## Indexado con condiciones múltiples


z <- seq(-10, 10, by = .5)
z

z[z < -5 | z > 5]

cond <- (z >= 0 & z <= 5)
cond

z[cond]

## Indexado de matrices

M[1:2, ]

M[1:2, 2:3]

M[1, c(1, 4)]

## Indexado de matrices

M[-1,]

M[-c(1, 2),]

## Podemos acceder a los elementos...
## - Por su nombre

lista$a

## - o por su índice

  lista[1]

  lista[[1]]

## Podemos acceder a los elementos

  df <- data.frame(x = 1:5,
                   y = rnorm(10),
                   z = 0)



## - Por su nombre (como una lista)

df$x


## - Por su índice (como una matriz)

df[1,]

df[,1]

## Indexado lógico
## - Hay que explicitar dos veces el "data.frame":

df[df$y > 0,]


## - La función "subset" simplifica el código:

subset(df, y > 0)

## Uso de "with" 
## - Problema: el código con varias variables puede ser ilegible

df$x^2 + df$y^2


## - La función "with" permite acceder a varias variables con una única llamada:

with(df, x^2 + y^2)

with(df, x[y > 0])
