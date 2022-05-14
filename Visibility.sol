//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract VisibilityBase {

    uint internal x = 0;
    uint private y = 0;
    uint public z = 0;

    function internalfun () internal view returns (uint _x)
    {
        return x;
    }
    function privatefun () private view returns (uint _x)
    {
        return y;
    }
    function publicfun () public view returns (uint _x)
    {
        return z;
    }
    function externalfun () external view returns (uint _x)
    {
        return z + y + x;
    }

    function example () external view {
        z + y + x;
        internalfun();
        privatefun ();
        publicfun ();
        // externalfun ();
    }
}

contract VisibilityChild is VisibilityBase{

   function check() external view {
       internalfun ();
   }
    // z + y + x;
    //     internalfun();
    //     privatefun ();
    //     publicfun ();
    //     externalfun ();
}