/**
 * @type import('hardhat/config').HardhatUserConfig
 */

 require("@nomiclabs/hardhat-ethers");
 require("dotenv").config();

module.exports = {
  solidity: "0.8.2",
  networks: {
    hardhat:{},
    mumbai: {
      url: process.env.API_URL,
      accounts: [process.env.PRIVATE_KEY]
    }
  }
};
