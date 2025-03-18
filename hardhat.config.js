require("@nomiclabs/hardhat-ethers");
require("@nomicfoundation/hardhat-verify");

/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  networks: {
    fluent_devnet1: {
      url: "https://rpc.dev.gblend.xyz/",
      chainId: 20993,
      accounts: [
        `0x${""}`,
      ], // Replace with the private key of the deploying account
    },
  },
  solidity: {
    version: "0.8.20",
  },
  etherscan: {
    apiKey: "empty", // Para Blockscout, deixe como "empty"
    customChains: [
      {
        network: "fluent_devnet1",
        chainId: 20993,
        urls: {
          apiURL: "https://blockscout.dev.gblend.xyz/api",
          browserURL: "https://blockscout.dev.gblend.xyz",
        },
      },
    ],
  },
};
