//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract stateVariable{

    //114253 gas 
    uint public myInt = 123;
    //145517 gas
    uint public myInt1 = 123;

    function foo() external pure {
        uint x = 123;
    }

}