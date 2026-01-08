// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodeSWAP3 {
    function run() public pure returns (uint256) {
        assembly {
            let a := 10
            let b := 20
            let c := 30
            let d := 40
            mstore(0x00, a)
            return(0x00, 0x20)
        }
    }
}
