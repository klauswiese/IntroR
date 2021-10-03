#Cluster para imágenes https://www.r-bloggers.com/r-k-means-clustering-on-an-image/
###################################################################################

#Dirección de trabajo
#setwd("~/Dropbox/R/ClusterImagenes/")

#Librerias
library(jpeg)
library(ggplot2)

#Cargar imagen 
img <- readJPEG("Image.jpg") # Read the image

#Dimesiones de la imagen
imgDm <- dim(img)

# Asignar los canales RGB a la tabla
imgRGB <- data.frame(
  x = rep(1:imgDm[2], each = imgDm[1]),
  y = rep(imgDm[1]:1, imgDm[2]),
  R = as.vector(img[,,1]),
  G = as.vector(img[,,2]),
  B = as.vector(img[,,3])
)

#Graficar la image original
# Tema para ggplot
plotTheme <- function() {
  theme(
    panel.background = element_rect(
      size = 3,
      colour = "black",
      fill = "white"),
    axis.ticks = element_line(
      size = 2),
    panel.grid.major = element_line(
      colour = "gray80",
      linetype = "dotted"),
    panel.grid.minor = element_line(
      colour = "gray90",
      linetype = "dashed"),
    axis.title.x = element_text(
      size = rel(1.2),
      face = "bold"),
    axis.title.y = element_text(
      size = rel(1.2),
      face = "bold"),
    plot.title = element_text(
      size = 20,
      face = "bold",
      vjust = 1.5)
  )
}

#Graficar
ggplot(data = imgRGB, aes(x = x, y = y)) + 
  geom_point(colour = rgb(imgRGB[c("R", "G", "B")])) +
  labs(title = "Original Image: Colorful Bird") +
  xlab("x") +
  ylab("y") +
  plotTheme()

#Cluster
kClusters <- 5
kMeans <- kmeans(imgRGB[, c("R", "G", "B")], centers = kClusters)
kColours <- rgb(kMeans$centers[kMeans$cluster,])

#Graficar el cluster
ggplot(data = imgRGB, aes(x = x, y = y)) + 
  geom_point(colour = kColours) +
  labs(title = paste("k-Means Clustering of", kClusters, "Colours")) +
  xlab("x") +
  ylab("y") + 
  plotTheme()

