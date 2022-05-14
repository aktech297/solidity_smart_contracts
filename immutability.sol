//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract Immutability {

    address public owner = msg.sender;

    uint public x = 0;

    function foo() external {
        require(msg.sender == owner);
        x = x+1;
    }
}