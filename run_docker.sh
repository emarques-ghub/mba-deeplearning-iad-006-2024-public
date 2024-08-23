#!/bin/bash

# Nome da imagem e do contêiner
IMAGE_NAME="digits_api"
CONTAINER_NAME="digits_api"

# Construir a imagem Docker usando o Dockerfile no diretório atual
echo "Construindo a imagem Docker..."
docker build -t $IMAGE_NAME .

# Verificar se o contêiner já está em execução e parar se necessário
if [ $(docker ps -q -f name=$CONTAINER_NAME) ]; then
    echo "Parando o contêiner existente..."
    docker stop $CONTAINER_NAME
fi

# Remover o contêiner existente para evitar conflitos
if [ $(docker ps -a -q -f name=$CONTAINER_NAME) ]; then
    echo "Removendo o contêiner existente..."
    docker rm $CONTAINER_NAME
fi

# Executar o contêiner
echo "Iniciando o contêiner Docker..."
docker run -d -p 8000:8000 --name $CONTAINER_NAME $IMAGE_NAME
