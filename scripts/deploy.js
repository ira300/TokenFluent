const { ethers } = require("hardhat");
const prompt = require("prompt-sync")();

async function main() {
    const [deployer] = await ethers.getSigners();
    console.log("Deploying contract with the account:", deployer.address);

    // Solicita informações do token ao usuário
    const name = prompt("Enter token name: ");
    const symbol = prompt("Enter token symbol: ");
    const supply = prompt("Enter total supply: ");

    console.log("\nDeploying contract...");
    const Token = await ethers.getContractFactory("Token");
    const token = await Token.deploy(name, symbol, supply);

    // Verifica qual versão do ethers está sendo usada
    if (token.waitForDeployment) {
        await token.waitForDeployment();  // Para ethers v6
    } else {
        await token.deployed();  // Para ethers v5
    }

    console.log("\n✅ Token deployed successfully!");
    console.log("📌 Contract Address:", token.address);
}

main().catch((error) => {
    console.error("❌ Deployment failed:", error);
    process.exit(1);
});

