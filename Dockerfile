# Base image
FROM python:3.11-slim

# Criar diretório de trabalho
WORKDIR /app

# Copiar tudo pro container
COPY . .

# Instalar dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expor porta e rodar app
EXPOSE 5000
CMD ["python", "app.py"]
