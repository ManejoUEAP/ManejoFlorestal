#Regressão Multipla 

trees
head(trees)

summary(trees)

trees$DAP=(trees$Girth/pi)

regressao=lm(Volume~DAP+Height, trees)

summary(regressao)

p=predict(regressao)

residuo=(trees$Volume-p)/trees$Volume*100

plot(p,residuo, ylim = c(60,-60))
abline(0,0)

plot(regressao)

