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

# Rodar o deploy e capturar o endereço do contrato
CONTRACT_ADDRESS=$(npx hardhat run scripts/deploy.js --network fluent_devnet1 --name "$TOKEN_NAME" --symbol "$TOKEN_SYMBOL" --supply "$TOTAL_SUPPLY" | grep "Contrato implantado no endereço" | awk '{print $NF}')

# Verificar se o contrato foi implantado corretamente
if [ -z "$CONTRACT_ADDRESS" ]; then
  echo "❌ Erro: O contrato não foi implantado corretamente!"
  exit 1
fi

echo "✅ Token implantado com sucesso no endereço: $CONTRACT_ADDRESS"

# Verificação e publicação no Blockscout
echo "🔍 Verificando e publicando contrato no Blockscout..."
npx hardhat verify --network fluent_devnet1 $CONTRACT_ADDRESS "$TOKEN_NAME" "$TOKEN_SYMBOL" "$TOTAL_SUPPLY"

echo "🎉 Processo concluído! Seu token já está implantado e publicado."


