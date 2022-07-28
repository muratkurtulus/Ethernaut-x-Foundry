// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

// For this challenge, our end goal is to be able to claim the ownership of the contract.
contract Telephone {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function changeOwner(address _owner) public {
        if (tx.origin != msg.sender) {
            owner = _owner;
        }
    }
}

// hedef --- aracı contract -- EOA
//
