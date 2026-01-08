// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodeEXTCODEHASH {
    function run(address addr) public view returns (bytes32) {
        assembly {
            mstore(0x00, extcodehash(addr))
            return(0x00, 0x20)
        }
    }
}
