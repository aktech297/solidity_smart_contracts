//SPDX-License-Identifier:MIT
pragma solidity 0.8.10;

contract auction {
    mapping(address => uint) public bids;

    function bid() payable public {
        bids[msg.sender] = msg.value;
    }
}
