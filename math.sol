//SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract Math {

    function get () public pure returns(uint)    {
        uint _x = 0;
        //unchecked{_x--;}
        _x--;
        return _x;
    }

    function Unchecked () public pure returns(uint)    {
        uint _x = 0;
        unchecked{_x--;}
        return _x;
    }
}