// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodeISZERO {
    function run(uint256 a) public pure returns (uint256) {
        assembly {
            mstore(0x00, iszero(a))
            return(0x00, 0x20)
        }
    }
}
