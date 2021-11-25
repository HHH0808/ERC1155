const { ethers } = require("hardhat");

async function main() {
    const MyNFT = await ethers.getContractFactory("ERC1155Trial")
  
    // Start deployment, returning a promise that resolves to a contract object
    const myNFT = await MyNFT.deploy("ERC1155Trial", "1155T", "{Insert IPFS address}")
    await myNFT.deployed();

    console.log("Contract deployed to address:", myNFT.address)
  }
  
  main()
    .then(() => process.exit(0))
    .catch((error) => {
      console.error(error)
      process.exit(1)
    })
  