//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract firstApp{

    uint public count;

    function inc() public {
        count++;
    }

    function dec() public {
        count--;
    }
}