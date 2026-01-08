// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodeMCOPY {
    function run() public pure returns (uint256) {
        assembly {
            mstore(0x80, 99)
            let temp := mload(0x80)
            mstore(0xA0, temp)
            mstore(0x00, mload(0xA0))
            return(0x00, 0x20)
        }
    }
}
