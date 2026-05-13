FROM python:3.12-slim

# Instala dependências de compilação e a libmagic para o PySUS
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    libmagic1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Garante que o pip esteja atualizado e instala as dependências do Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]
