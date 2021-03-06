#Fazendo a leitura dos dados e selecionando o municipio a ser trabalhado nesse script
dados <- subset(read.csv('https://raw.githubusercontent.com/audreyemmely/probest/main/dados_pandemia_alagoas.csv'), municipio_residencia == "Rio Largo")

#1. Escolha uma variável qualitativa e elabore um gráfico de barras e um gráfico de pizza.
pie(table(dados$sexo), main = "Gráfico de setores - Sexo", col = c("antiquewhite1", "lightcyan3"))
barplot(table(dados$sexo), main = "Gráfico de barras - Sexo", ylab="Frequência",  col = c("antiquewhite1", "lightcyan3"))

#2. Escolha uma variável continua, no caso Idade, e elabore e a tabela de Frequências com os dados agrupados e o gráfico histograma.
Idade.tb<-(dados$idade)

limitesClass <- c(0,10,20,30,40,50,60,70,80,90,100)
classes<-c("0-10","10-20","20-30","30-40","40-50","50-60","60-70","70-80","80-90","90-100")

freq = table(cut(Idade.tb, breaks = limitesClass, right = FALSE, labels = classes))

freqAc <- cumsum(freq)
freqRel <- prop.table(freq)
freqRelAc <- cumsum(freqRel)

TabResult = cbind(freq, freqAc, freqRel = round(freqRel*100, digits = 2), freqRelAc = round(freqRelAc*100, digits = 2))
TabResult

hist(Idade.tb, main = "Histograma - Idade", xlab = "Idade", ylab="Frequência")  

#3. Escolha duas variáveis qualitativa, sexo e situação atual, por exemplo e elabore alguns tipos de gráficos de barras.
barplot(table(dados$sexo), main = "Gráfico de barras - Sexo", ylab="Frequência",  col = c("antiquewhite1", "lightcyan3"))

barplot(table(dados$situacao_atual), main = "Gráfico de barras - Situação atual", col = gray.colors(8), names="")
legend("topleft", legend=unique(dados$situacao_atual), cex=0.8, fill = gray.colors(8))

#4. Considere a variável qualitativa sexo e a variável quantitativa Idade e elabore os gráficos boxplots correspondentes.
boxplot(dados$idade~dados$sexo, col = c("antiquewhite1", "lightcyan3"), xlab = "Sexo", ylab = "Idade", main = "Boxplot - Idade e Sexo")
boxplot(dados$idade, col = "moccasin", ylab = "Idade", main = "Boxplot - Idade")