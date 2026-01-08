// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodePUSH12 {
    function run() public pure returns (uint256) {
        assembly {
            mstore(0x00, 0x1234567890abcdef123456)
            return(0x00, 0x20)
        }
    }
}
