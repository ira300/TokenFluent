#!/bin/bash

echo " Starting the creation of the ERC-20 Token on Fluent Devnet..."

# Install dependencies
echo " Installing dependencies..."
npm install

# Prompt the user for token details
read -p " Enter the token name: " TOKEN_NAME
read -p " Enter the token symbol: " TOKEN_SYMBOL
read -p " Enter the total token supply: " TOTAL_SUPPLY

echo 📜 Creating the contract with the following details:"
echo " Name: $TOKEN_NAME"
echo " Symbol: $TOKEN_SYMBOL"
echo " Total Supply: $TOTAL_SUPPLY units"

# Pass variables as environment variables to avoid error HH308
TOKEN_NAME="$TOKEN_NAME" TOKEN_SYMBOL="$TOKEN_SYMBOL" TOTAL_SUPPLY="$TOTAL_SUPPLY" \
npx hardhat run scripts/deploy.js --network fluent_devnet1

