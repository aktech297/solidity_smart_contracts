//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract counter {

    uint public count = 0;

    function inc() external {
        count++;
    }
    function dec() external{ 
        count--;
    }
    function get() external view returns (uint){ 
        return count;
    }
}