const hre = require("hardhat");

async function main() {

    const chai1 = await hre.ethers.getContractFactory("chai1");
    const contract = await chai1.deploy(); //instance of contract 

    await contract.deployed();
    console.log("Address of contract:", contract.address);
}
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
