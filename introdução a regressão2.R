trees
mean(trees$Volume)
summary(trees)
sd(trees$Girth)

dados=trees
dados$DAP=(dados$Girth/pi)
head(dados)

modelo1=lm(Volume~DAP, dados)
summary(modelo1)
estimativa1=predict(modelo1)

Residuo=(dados$Volume-estimativa1)/dados$Volume*100

plot(Residuo~estimativa1, ylim= c(-60,60))
abline(0,0)

modelo2=lm(Volume~Height, dados)
summary(modelo2)
estimativa2=predict(modelo2)

Residuo2=(dados$Volume-estimativa2)/dados$Volume*100

plot(Residuo2~estimativa2, ylim= c(-60,60))
abline(0,0)


modelo3=lm(Volume~DAP+Height, dados)
summary(modelo3)
estimativa3=predict(modelo3)

Residuo3=(dados$Volume-estimativa3)/dados$Volume*100

plot(Residuo3~estimativa3, ylim= c(-60,60))
abline(0,0)

#Regressãoo não linear
modelo4=lm(log(Volume)~log(DAP), dados)
summary(modelo4)
estimativa4=exp(predict(modelo4))

Residuo4=(dados$Volume-estimativa4)/dados$Volume*100
plot(Residuo4~estimativa4, ylim=c(-60,60))
abline(0,0)


erropadrao=sqrt(sum(((dados$Volume-estimativa4)^2))/31-1-1)
erropadrao


