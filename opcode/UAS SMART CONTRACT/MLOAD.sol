// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodeMLOAD {
    function run() public pure returns (uint256) {
        assembly {
            mstore(0x80, 42)
            mstore(0x00, mload(0x80))
            return(0x00, 0x20)
        }
    }
}
