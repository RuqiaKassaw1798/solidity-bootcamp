const hre = require("hardhat");

async function main() {
  console.log("Deploying Voting contract...");

  // We use 'Voting' because that is the name inside the .sol file
  // If your contract inside is named VotingDapp, change 'Voting' to 'VotingDapp'
  const Voting = await hre.ethers.getContractFactory("Voting"); 
  const voting = await Voting.deploy();

  await voting.deployed();

  console.log("Voting contract deployed to:", voting.address);
  console.log("Please save this address for your README!");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });