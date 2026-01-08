// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodePUSH25 {
    function run() public pure returns (uint256) {
        assembly {
            mstore(
                0x00,
                0x0102030405060708090a0b0c0d0e0f101112131415
            )
            return(0x00, 0x20)
        }
    }
}
