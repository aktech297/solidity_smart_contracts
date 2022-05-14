//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract ifElse{

    function condition (uint _x) external pure returns (uint) {
        if (_x > 10)    {
            return 1;
        }
        else if (_x > 20) {
            return 2;
        } else  {
            return 3;
        }

    }
}