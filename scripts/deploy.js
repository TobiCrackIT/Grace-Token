const hre = require("hardhat");

async function main(){
    const graceTokenContract = await hre.ethers.getContractFactory("GraceToken");
    const graceToken = await graceTokenContract.deploy("1000000000000000000000000000");

    await graceToken.deployed();

    console.log("Token deployed to:", graceToken.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });