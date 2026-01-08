// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodeORIGIN {
    function run() public view returns (address) {
        assembly {
            mstore(0x00, origin())
            return(0x00, 0x20)
        }
    }
}
