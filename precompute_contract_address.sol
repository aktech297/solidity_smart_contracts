//SPDX-License-Identifier:MIT

pragma solidity 0.8.13;

contract Deploy {

    function deploy(address _owner, uint _foo, uint _salt ) public returns(address)   {

           return address(new NewContract{salt:bytes32(_salt)}(_owner,_foo));
    }

    function getAddr(bytes memory bytecode, uint _sal) public view returns(address){
       bytes32 hash= keccak256(abi.encodePacked(bytes1(0xff),address(this),_sal,keccak256(bytecode)));

        return address(uint160(uint(hash)));
    }

    function getBytecode(address _owner,uint _num) public pure returns(bytes memory)  {
        bytes memory bytecode = type(NewContract).creationCode;
        return abi.encodePacked(bytecode,abi.encode(_owner,_num));
    }
}

contract NewContract {

    address public owner;
    uint public foo;

    constructor(address _owner, uint _foo)  {
        owner = _owner;
        foo = _foo;
    }

    function getBalance() public view returns (uint)    {
        return address(this).balance;
    }
}
