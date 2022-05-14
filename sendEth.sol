//SPDX-License-Identifier:MIT
pragma solidity 0.8.10;

contract ETHWallet {
    address payable public owner;

    constructor()   {
        owner = payable(msg.sender);
    }

    receive() external payable {

    }
    function withdraw(uint _value) external {
        require(owner==msg.sender,"owner not found");
        payable(msg.sender).transfer(_value);
    }

    function getBalance () external view returns (uint amount)  {
        return payable(this).balance;
    }
}