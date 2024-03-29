## Conjunto de datos: swiss
data(swiss)

summary(swiss)

library(lattice)
splom(swiss, pscale=0, type=c('p', 'smooth'),
      groups=swiss$Catholic > 50, xlab='')

## Resumen de  información

summary(swiss)

## Media

mean(swiss$Fertility)

colMeans(swiss)

## Desviación Estándar


sd(swiss$Fertility)

sapply(swiss, sd)

## Otras


median(swiss$Fertility)

mad(swiss$Fertility)

IQR(swiss$Fertility)

## Distribución Normal

rnorm(10, mean = 1, sd = .4)

hist(rnorm(1e6, mean = 1, sd = .4))

## Distribución Normal

x <- seq( -5, 5, by =.01)
plot(x, dnorm(x), type = 'l')

## Distribución Uniforme


runif(10, min=-3, max=3)

hist(runif(1e6, min = -3, max = 3))

## Distribución de Weibull

rweibull(n=10, shape = 3, scale = 2)

hist(rweibull(1e6, shape = 3, scale = 2))

## Muestreo aleatorio


x <- seq(1, 100, length = 10)
x



## - Sin reemplazo

sample(x)

sample(x, 5)



## - Con reemplazo

sample(x, 5, replace = TRUE)

## Para muestra única

## - t de Student

t.test(swiss$Fertility, mu=70)



## - Wilcoxon (no paramétrico)

wilcox.test(swiss$Fertility, mu=70)

## Para muestras pareadas

Religion <- ifelse(swiss$Catholic > 50,
                   'Catholic', 'Protestant')



## - t de Student

t.test(Fertility ~ Religion, data=swiss)

## Para muestras pareadas
## - Wilcoxon

wilcox.test(Fertility ~ Religion, data=swiss)

## Fertilidad y educación

lmFertEdu <- lm(Fertility ~ Education,
              data = swiss)
summary(lmFertEdu)

## Fertilidad y educación

coef(lmFertEdu)

fitted.values(lmFertEdu)

## Fertilidad y educación

residuals(lmFertEdu)

## Fertilidad y educación

plot(lmFertEdu, which = 1)

## Fertilidad, educación y religión

lmFertEduCat <- lm(Fertility ~ Education + Catholic,
                   data = swiss)
summary(lmFertEduCat)

## Lo mismo con =update=

lmFertEduCat <- update(lmFertEdu, . ~ . + Catholic,
                       data = swiss)
summary(lmFertEduCat)

## Fertilidad, educación, religión y agricultura

lmFertEduCatAgr <- lm(Fertility ~ Education + Catholic + Agriculture,
                      data = swiss)
summary(lmFertEduCatAgr)

## Lo mismo con =update=

lmFertEduCatAgr <- update(lmFertEduCat,
                          . ~ . + Agriculture,
                          data = swiss)
summary(lmFertEduCatAgr)

## Lo mismo con =update=

lmFertEduCatAgr <- update(lmFertEdu,
                          . ~ . + Catholic + Agriculture,
                          data = swiss)
summary(lmFertEduCatAgr)

## Comparamos modelos con =anova=

anova(lmFertEdu, lmFertEduCat, lmFertEduCatAgr)

## Fertilidad contra todo

lmFert <- lm(Fertility ~ ., data=swiss)

summary(lmFert)

## Elegir un modelo con =anova=

anova(lmFert)

## Elegir un modelo con =step=

stepFert <- step(lmFert)

## Elegir un modelo

summary(stepFert)

## Elegir un modelo

stepFert$anova
