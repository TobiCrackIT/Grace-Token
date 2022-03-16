// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GraceToken is ERC20, Ownable{
    constructor(uint256 totalSupply) ERC20("GraceToken", "GRT"){
        _mint(msg.sender, totalSupply);
    }

}

//Contract Address - 0x1Bcb6a7EbA8733B62ae081B6724D69afF1DD0D45