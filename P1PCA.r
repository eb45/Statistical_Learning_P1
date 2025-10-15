library(mlbench)
data("BostonHousing", package = "mlbench")
data("BostonHousing2", package = "mlbench")
summary(BostonHousing)
boxplot(BostonHousing)
pca=prcomp(BostonHousing[,-4], scale=T)
new_data=scale(BostonHousing[,-4])
boxplot(new_data)


ggcorrplot(cor(new_data),lab=T, type="lower")

plot(BostonHousing2$lon,BostonHousing2$lat)

x.f=factanal(new_data)
x.f <- factanal(new_data,factors = 3, rotation="none", scores = "regression")
x.f <- factanal(new_data,factors = 3, rotation="varimax", scores = "regression")


