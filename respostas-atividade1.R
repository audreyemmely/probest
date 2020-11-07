#Fazendo a leitura dos dados e selecionando o municÃ­pio a ser trabalhado nesse script
dados <- subset(read.csv('https://raw.githubusercontent.com/audreyemmely/probest/main/dados_pandemia_alagoas.csv'), municipio_residencia == "Rio Largo")

#Boxplot
boxplot(dados$idade~dados$sexo, col = "gray", xlab = "Sexo", ylab = "Idade", main = "Boxplot - Idade e Sexo", pch = 19)
boxplot(dados$idade, col = "gray", ylab = "Idade", main = "Boxplot - Idade", pch = 19)

#1.
#Gráfico de pizza
pie(table(dados$sexo), main = "Frequência dos dados de sexo", ylab="Frequência")

#Gráfico de barra
plot(table(dados$sexo), main = "Frequência dos dados de sexo", ylab="Frequência")

#2.
#Tabela de frequência
table(dados$idade) 

#Histograma da tabela de frequencia
hist(table(dados$idade), main = "Histograma da frequência dos dados da idade", xlab = "Dados", ylab="Frequência") 


