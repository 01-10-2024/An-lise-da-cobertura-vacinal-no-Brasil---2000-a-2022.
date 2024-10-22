# Instale pacotes necessários (caso ainda não estejam instalados)
if (!require(tidyverse)) install.packages("tidyverse")

# Carregar bibliotecas
library(tidyverse)

# 1. Carregar os dados das vacinas por região
dados_regiao <- data.frame(
  Regiao = rep(c("Norte", "Nordeste", "Sudeste", "Sul", "Centro-Oeste"), each = 11),
  Vacina = rep(c("BCG", "FA", "INF", "DT", "HX", "VIP", "MncC", "TETRA", "Tetraviral", "Hepatite", "BCG.2"), 5),
  Doses = c(
    365941, 2861551, 305849, 1694, 1593, 437381, 3878374, 137855, 1569132, 401, 18738,
    539537, 5869845, 744447, 6624, 8365, 655943, 11607655, 564177, 2115593, 2051, 22552,
    188962, 8218619, 804376, 6067, 39171, 639624, 16411152, 249787, 2989064, 3714, 39404,
    61978, 3938435, 452917, 924, 20567, 210894, 5831403, 91798, 2289710, 1471, 21268,
    64210, 2494802, 174905, 1744, 6338, 146117, 3291590, 93314, 1410031, 658, 17684
  )
)

# 2. Resumo dos dados
summary(dados_regiao)

# 3. Realizar a ANOVA para verificar se há diferenças significativas entre as médias das doses nas regiões
anova_result <- aov(Doses ~ Regiao, data = dados_regiao)

# Exibir o resumo da ANOVA
summary(anova_result)

# 4. Teste de Tukey para identificar quais regiões diferem significativamente
tukey_result <- TukeyHSD(anova_result)

# Exibir o resultado do teste de Tukey
print(tukey_result)

# 5. Visualizar os resultados com um gráfico de comparações de Tukey
plot(tukey_result, las = 1)

# Interpretação das hipóteses:
# H0: Não há diferença significativa entre as médias de doses aplicadas nas regiões.
# H1: Pelo menos uma região apresenta diferença significativa na aplicação de doses.
# H2: A falta de campanhas educativas pode influenciar essas diferenças.
# H3: Locais de difícil acesso podem apresentar menor adesão vacinal.

# 6. Análise exploratória adicional (boxplot)
ggplot(dados_regiao, aes(x = Regiao, y = Doses, fill = Regiao)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Distribuição das Doses Aplicadas por Região", 
       x = "Região", y = "Doses Aplicadas")