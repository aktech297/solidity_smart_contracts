//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract SelfDestrcut{
    constructor() payable{}

    function Kill() external {
        selfdestruct(payable(msg.sender));
    }

    function test() external pure returns (uint) {
        return 123;
    } 
}
contract Helper {
    function getbalance () external view returns (uint){
        return address(this).balance;
    }

    function kill (SelfDestrcut _kill)external{
        _kill.Kill();
    }
}