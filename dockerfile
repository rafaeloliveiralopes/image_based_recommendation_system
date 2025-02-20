# Usa uma imagem oficial do TensorFlow com suporte a GPU
FROM tensorflow/tensorflow:latest-gpu

# Instala pacotes adicionais necessários
RUN apt-get update && apt-get install -y \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto para dentro do container
COPY . /app

# Atualiza o pip para evitar problemas de compatibilidade
RUN pip install --upgrade pip

# Instala as dependências do Python
RUN pip install --no-cache-dir -r /app/requirements.txt

# Comando padrão ao iniciar o container
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
