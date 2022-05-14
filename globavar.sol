//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract GlobVar{

    function globvars() external view returns (address, uint, uint) {

        address sender =  msg.sender;

        uint blocktime = block.timestamp;

        uint blockNum = block.number;

        return (sender,blocktime,blockNum);
    }
}