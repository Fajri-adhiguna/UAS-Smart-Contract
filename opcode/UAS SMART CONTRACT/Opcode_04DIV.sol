// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodeDIV {

    function run(uint256 a, uint256 b) public pure returns (uint256 hasil) {
        assembly {
            // Opcode DIV (0x04)
            hasil := div(a, b)
        }
    }
}
