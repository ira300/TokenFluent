#!/bin/bash

echo "🚀 Iniciando a criação do Token ERC-20 na Fluent Devnet..."

# Instalar dependências
echo "🔧 Instalando dependências..."
npm install

# Solicitar informações do token ao usuário
read -p "📌 Digite o nome do token: " TOKEN_NAME
read -p "🔢 Digite o símbolo do token: " TOKEN_SYMBOL
read -p "💰 Digite o supply total do token: " TOTAL_SUPPLY

echo "📜 Criando o contrato com os seguintes detalhes:"
echo "➡ Nome: $TOKEN_NAME"
echo "➡ Símbolo: $TOKEN_SYMBOL"
echo "➡ Supply Total: $TOTAL_SUPPLY unidades"

# Passar as variáveis como ambiente para evitar erro HH308
TOKEN_NAME="$TOKEN_NAME" TOKEN_SYMBOL="$TOKEN_SYMBOL" TOTAL_SUPPLY="$TOTAL_SUPPLY" \
npx hardhat run scripts/deploy.js --network fluent_devnet1

