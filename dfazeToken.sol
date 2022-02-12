// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//importing ERC20 Standard Lib 
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract dfazeToken is ERC20 {
    constructor(string memory _name, string memory _symbol) 

    ERC20(_name, _symbol) {

        //This will mint the initial tokens
        _mint(msg.sender, 10 * 10 ** 18);
    }
}

//The name of the token and symbol was written in remix ide's deployment tab