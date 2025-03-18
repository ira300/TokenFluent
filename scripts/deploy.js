const { ethers } = require("hardhat");

async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("🚀 Deploying contract with the account:", deployer.address);

    // Captura os valores das variáveis de ambiente
    const tokenName = process.env.TOKEN_NAME;
    const tokenSymbol = process.env.TOKEN_SYMBOL;
    const tokenSupply = process.env.TOTAL_SUPPLY;

    if (!tokenName || !tokenSymbol || !tokenSupply) {
        console.error("❌ Erro: Nome, símbolo e supply do token são obrigatórios!");
        process.exit(1);
    }

    console.log(`📜 Criando o contrato com os seguintes detalhes:
➡ Nome: ${tokenName}
➡ Símbolo: ${tokenSymbol}
➡ Supply Total: ${tokenSupply} unidades`);

    // Criação do contrato
    const Token = await ethers.getContractFactory("Token");
    const token = await Token.deploy(tokenName, tokenSymbol, tokenSupply);

    await token.deployed(); // 🔥 Correção aqui

    console.log("✅ Token implantado com sucesso!");
    console.log("📌 Endereço do contrato:", token.address);
}

main().catch((error) => {
    console.error("❌ Erro durante o deploy:", error);
    process.exit(1);
});

