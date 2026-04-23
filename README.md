# API de Ingestão - SINAN Dengue (Alagoinhas)

## 📍 Sobre o Projeto
Parte integrante do **ODA (Observatório de Dados de Alagoinhas)** pela startup **TERRITÓRIO**. 
Esta API realiza a coleta, limpeza e ingestão dos dados de notificações de Dengue do SINAN diretamente para o Google Cloud Platform.

## 🛠️ Tecnologias Utilizadas
* **Python**: Processamento e limpeza de dados.
* **Google Cloud Run (Jobs)**: Execução serverless da tarefa.
* **Google BigQuery**: Data Warehouse (Camadas Bronze, Silver, Gold).
* **Docker**: Containerização do serviço.

## 🚀 Fluxo de Dados
1. Coleta do arquivo bruto (CSV/DataSUS).
2. Tratamento de inconsistências (CNES, idade, datas).
3. Carga no BigQuery utilizando camadas de Medalhão.
4. Atualização automática via CI/CD (GitHub + Cloud Build).
