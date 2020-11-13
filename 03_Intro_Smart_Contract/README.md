# Simple Smart Contract

## Prerequisite
- NodeJS
- truffle
- ganache
- Visual Studio Code (optional)

## Step 0
Create a directory:

```mkdir 03_Intro_Smart_Contract```

Change to work at the new directory:

```cd 03_Intro_Smart_Contract```

## Step 1
Initialize the truffle framework with the following command:

```truffle init```

## Step 2
Use Visual Studio Code to create ```MyData.sol``` in ```contracts``` folder:

```
pragma solidity ^0.5.16;

contract MyData {
  uint myVariable;

  function set(uint x) public {
    myVariable = x;
  }

  function get() view public returns (uint) {
    return myVariable;
  }
}
```

## Step 3
Use Visual Studio Code to create ```2_deploy_contracts.js``` in ```migrations``` folder:

```
var MyData = artifacts.require("MyData");

module.exports = function(deployer) {
    deployer.deploy(MyData);
};
```

## Step 4: 
At working directory (e.g. 03_Intro_Smart_Contract folder), enter the following command at the terminal to compile the project:
```
truffle compile
```

After successful compilation, go to development prompt by using the command as following:
```
truffle develop
```

In the development prompt, we can migrate the smart contracts to the blockchain (provided by truffle) with this command:
```
migrate
```



```
MyData.deployed().then(function(instance){return instance.get.call();}).then(function(value){return value.toNumber()});
```

```
MyData.deployed().then(function(instance){return instance.set(2020);});
```