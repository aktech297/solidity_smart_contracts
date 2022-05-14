//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Deposit{

    address public immutable owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    receive() external  payable {}

    function getbalance() public view returns (uint)
    {
        return address(this).balance;
    }

    function transfer(address payable _receiver) public {
        require(owner==msg.sender,"not authorised sender");
        _receiver.transfer(address(this).balance);
    }
}