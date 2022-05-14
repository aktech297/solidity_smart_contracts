//SPDX-License-Identifier:MIT

pragma solidity 0.8.10;

contract VerifyTheSig {

    function verify (address _signer, string memory _message, bytes memory _signature)
    external pure returns (bool)
    {
        bytes32 messagehash = getMessageHash(_message);

        bytes32 ethSignedMessageHash = getEthSignedMessageHash(messagehash);

        return recover(ethSignedMessageHash, _signature) == _signer;
    }

    function getMessageHash(string memory _message) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_message));
    }

    function getEthSignedMessageHash(bytes32 _messageHash) public pure returns (bytes32){
        return keccak256(abi.encodePacked(
        "\x19Ethereum Signed Message:\n32",
        _messageHash
        ));
    }

    function recover(bytes32 _ethSignedMessagehash,bytes memory signature) 
    public pure returns(address) 
    {
        (bytes32 r, bytes32 s, uint8 v) = _split(signature);

        return ecrecover(_ethSignedMessagehash, v, r, s);
    }

    function _split(bytes memory signature)
    internal pure returns (bytes32 r, bytes32 s, uint8 v)
    {
        require(signature.length == 65, "Invalid signature len");

        assembly{
            r:= mload(add(signature,32))
            s:= mload(add(signature,64))
            v:=byte(0,mload(add(signature,96)))
        }
    }
}