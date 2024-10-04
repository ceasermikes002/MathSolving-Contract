import { ethers } from "hardhat";

async function main() {
    const [deployer] = await ethers.getSigners();

    console.log("Deploying contract with the account:", deployer.address);

    const MathSolver = await ethers.getContractFactory("MathSolver");
    const mathSolver = await MathSolver.deploy();

    await mathSolver.waitForDeployment();

    console.log("MathSolver contract deployed at:", mathSolver.target);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
