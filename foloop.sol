//SPDX-License-Identifier:MIT
pragma solidity 0.8.10;

contract forloop{

    error MyError(uint x);
    uint public x = 5;
    uint public value = 0;

    function sum(uint _n) public returns (uint){
        if(_n <= 0)
        {
            revert MyError(_n);
            
        }
        
        //require(_n > 0,"_n < =0");
        x = 10;
        uint total = 0;
        for (uint i = 1; i<= _n; i++)
        {
            total += i;
        }
        return total;
    }

}