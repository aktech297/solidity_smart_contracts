//SPDX-License-Identifier:MIT
pragma solidity 0.8.10;

contract CallTestContract {
    function setX (address _test, uint x) external   {
        TestContract(_test).set(x);
    }
    function getX (address _test) external view returns (uint x)   {
        x = TestContract(_test).get();
    }

    function setXandReceivedEther(address _test,uint _x) external payable {
        TestContract(_test).setXandReceivedEther {value : msg.value} (_x);
        
    }

    function getXandValueinTest(address _test) external view returns (uint x, uint value) {
        (x,value) = TestContract(_test).getXandValue();
        
    }
}

contract TestContract {
    uint public x;
    uint public value = 123;

    function set(uint _x) external {
        x = _x;
    }

    function get() external view returns (uint){
        return x;
    }

    function setXandReceivedEther(uint _x) external payable {
        x = _x;
        value = msg.value;
    }

    function getXandValue () external view returns (uint, uint){ 
        return (x, value);
    }


}

