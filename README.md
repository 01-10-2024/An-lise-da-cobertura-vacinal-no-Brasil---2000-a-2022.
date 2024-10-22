# COBERTURA VACINAL EM CRIANÇAS E ADOLESCENTES NO BRASIL(2000-2022)

Este projeto investiga a **cobertura vacinal** em crianças e adolescentes nas regiões do Brasil entre **2000 e 2022**. Usamos a **linguagem R** para identificar padrões de vacinação, visualizando dados por faixa etária e tipo de vacina, e explorando a adesão ao longo dos anos com **análises estatísticas, gráficos e mapas**.

---

## 📁 **Estrutura do Projeto**
├── data/          # Para dados brutos (CSV)
├── scripts/       # Para os scripts R (ex.: anova.R, tukey.R)
├── results/       # Para os resultados das análises (gráficos, tabelas)
├── README.md      # Descrição do projeto (markdown)
└── .gitignore     # Arquivos/pastas a serem ignorados pelo Git


---

## 🎯 **Objetivo do Projeto**

- Analisar **padrões de cobertura vacinal** por faixa etária e região ao longo do tempo.
- **Visualizar tendências** e comparar a adesão entre diferentes vacinas.
- Criar **mapas temáticos** para mostrar a distribuição geográfica das coberturas.
- Usar **ANOVA e teste de Tukey** para verificar diferenças significativas.

---

## 🛠️ **Scripts Disponíveis**

1. **`anova.R`**: Realiza análise de variância (ANOVA) para verificar se há diferenças significativas na cobertura vacinal entre regiões e faixas etárias.
2. **`tukey.R`**: Aplica o teste de Tukey para comparações pós-hoc e identifica quais grupos diferem entre si.
3. **`graficos.R`**: Gera gráficos de linha e barras para visualizar a evolução da cobertura vacinal ao longo do tempo.
4. **`mapas.R`**: Cria mapas com a cobertura vacinal distribuída pelas regiões do Brasil.

---

## 🚀 **Como Usar**

### **Pré-requisitos**

- **R** e **RStudio** instalados.
- Instale os pacotes necessários com o comando abaixo:
  ```r
  install.packages(c("tidyverse", "readxl", "ggplot2", "sf", "rnaturalearth", "rgeos"))



source("scripts/anova.R")
source("scripts/tukey.R")
source("scripts/graficos.R")


RESULTADOS ESPERADOS

Gráficos de linha mostrando a evolução da cobertura vacinal ao longo dos anos.
Gráficos de barras comparando a cobertura por tipo de vacina e região.
Mapas temáticos com a distribuição geográfica da cobertura vacinal.
Relatórios de ANOVA e Tukey identificando diferenças significativas.

CONTRIBUIÇÃO

Contribuições são bem-vindas! Se quiser sugerir melhorias ou novas análises, abra uma issue ou envie um pull request.

LICENÇA:

Este projeto está sob a licença MIT.
