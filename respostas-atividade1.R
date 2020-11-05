#Fazendo a leitura dos dados e selecionando o município a ser trabalhado nesse script
dados <- subset(read.csv('https://raw.githubusercontent.com/audreyemmely/probest/main/dados_pandemia_alagoas.csv'), municipio_residencia == "Rio Largo")

#Boxplot
boxplot(dados$idade~dados$sexo, col = "gray", xlab = "Sexo", ylab = "Idade", main = "Boxplot - Idade e Sexo", pch = 19)
boxplot(dados$idade, col = "gray", ylab = "Idade", main = "Boxplot - Idade", pch = 19)