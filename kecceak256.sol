//SPDX-License-Identifier:MIT
pragma solidity 0.8.10;

contract HashFun {
    
    function kecak (string memory _text, uint num, address _addr) external pure returns (bytes32){
        return keccak256(abi.encodePacked(_text,num,_addr));
    }
}