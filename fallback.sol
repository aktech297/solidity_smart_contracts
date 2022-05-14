//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract FALLBACK {

    event Log(string func, address sender, uint _value, bytes _data );
 
    fallback () external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive () external payable {
        emit Log("receive", msg.sender, msg.value,"");
    }

}