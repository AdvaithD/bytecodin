import { HardhatUserConfig } from "hardhat/config";
import { task } from "hardhat/config";
import '@typechain/hardhat'
import "@nomiclabs/hardhat-ethers";
import "hardhat-gas-reporter"
import "hardhat-tracer";
import "hardhat-contract-sizer";
import "hardhat-docgen";
import "hardhat-log-remover";

task("signers", "get all signers", async (args, hre) => {
  const accounts = await hre.ethers.getSigners();

  for (const account of accounts) {
    console.log(await account.address);
  }
});

const config: HardhatUserConfig = {
  solidity: {
    compilers: [
      {
        "version": "0.4.23",
        settings: {
          optimizer: {
            enabled: true
          }
        }
      },
      {
        "version": "0.7.3",
        settings: {
          optimizer: {
            enabled: true
          }
        }
      },
      {
      "version": "0.6.2",
      settings: {
        optimizer: {
          enabled: true
        }
      }
    },
    {
      version: "0.6.6",
      settings: {
        optimizer: {
          enabled: true
        }
      }
    }]
  },
  defaultNetwork: "rinkeby",
  networks: {
    hardhat: {
      forking: {
        url: ""
      }
    },
    rinkeby: {
      url: "",
      accounts: [""]
    }
  },
  typechain: {
    target: 'ethers-v5'
  }
};

export default config