#Testando hip?tese - Faixa et?ria e imunol?gicos.

# Instalar pacotes necess?rios (se ainda n?o estiverem instalados)
if (!require(tidyverse)) install.packages("tidyverse")
if (!require(agricolae)) install.packages("agricolae")

# Carregar pacotes
library(tidyverse)
library(agricolae)

# Criar os dados no formato longo
dados <- data.frame(
  faixa_etaria = rep(1:19, each = 11),  # Faixas et?rias

  # Carregar os dados de vacina??o
  dados_vacinacao <- read.csv("C:\\Users\\cleus\\OneDrive\\?rea de Trabalho\\R\\FAIXA_ETÁRIA_E_IMUNOL?GICOS.csv", sep = ";", header = TRUE)
  
# Converter vari?veis para fator
dados$faixa_etaria <- as.factor(dados$faixa_etaria)
dados$vacina <- as.factor(dados$vacina)

# Estat?sticas descritivas
summary_stats <- dados %>%
  group_by(vacina) %>%
  summarise(
    Length = n(),
    Min = min(doses),
    `1st Qu.` = quantile(doses, 0.25),
    Median = median(doses),
    Mean = mean(doses),
    `3rd Qu.` = quantile(doses, 0.75),
    Max = max(doses)
  )

print(summary_stats)

# ANOVA
anova_result <- aov(doses ~ faixa_etaria + vacina, data = dados)
summary(anova_result)

# Teste de Tukey
tukey_result <- TukeyHSD(anova_result, "faixa_etaria")
print(tukey_result)

# Plotar o teste de Tukey
plot(tukey_result, las = 2)
