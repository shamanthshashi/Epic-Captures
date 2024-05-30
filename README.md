# ERC20 Token - Epic Captures

Epic Captures - The Photography expert has created his own token so that users can enter the world of photography using these Epic Captures(EC) tokens.

## Description

The users can use this token to be able to transact with other users by means of minting some tokens to their own accounts or other accounts, burning tokens from their own accounts and transferring or paying a certain number of tokens to other users.
This contract is currently deployed locally and not on testnet , so the users are transacting locally.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., epic-captures.sol). Copy and paste the following code into the file:

```
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EC is ERC20,ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("EpicCaptures", "EC")
        Ownable(initialOwner)
      
    {}

    function mint(address ec_address, uint256 ec_amount) public onlyOwner {
        _mint(ec_address, ec_amount);
    }

    function burn(uint256 ec_value) public override  {
        _burn(msg.sender,ec_value);
    }   
    function transfer(address ec_address, uint256 ec_amount) public override returns(bool){
        _transfer(msg.sender, ec_address, ec_amount);
        return true;
    }    
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "Compile epic-captures.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "epic-captures" contract from the dropdown menu, and then click on the "Deploy" button.




## Authors

Shamanth Shashi

@shamanthshashi2@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
