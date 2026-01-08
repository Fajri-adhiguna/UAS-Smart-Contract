// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodeDUP6 {
    function run() public pure returns (uint256) {
        assembly {
            let a := 1
            let b := 2
            let c := 3
            let d := 4
            let e := 5
            let f := 6
            mstore(0x00, a)
            return(0x00, 0x20)
        }
    }
}
