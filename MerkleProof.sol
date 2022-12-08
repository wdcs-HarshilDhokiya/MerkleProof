// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/cryptography/MerkleProof.sol";

contract merkleproof{
    bytes32 public root;

    constructor(bytes32 _root){
        root=_root;
    } 

    function verify(bytes32[] memory proof,bytes32 leaf) public view returns(bool) {
        return MerkleProof.verify(proof,root,leaf);
    }
}