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
