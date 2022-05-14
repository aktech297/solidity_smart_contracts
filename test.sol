//SPDX-License-Identifier:MIT
pragma solidity 0.8.10;

contract test{

    address public owner;
    uint public value;

    constructor(){
        owner = msg.sender;
        value = 0;
    }
    function changeowner() public {
        owner = msg.sender;
    }
    function pay() public payable{
        value = msg.value;
    }
    function getbalance() public view returns (uint){
        return address(this).balance;
    }
}