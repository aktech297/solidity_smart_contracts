//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract Payable {

    address payable public owner;

    constructor (){
        owner = payable(msg.sender);
    }

    function pay() external payable {}

    function getBalance () external view returns (uint)  {
        return address(this).balance;
    }
}