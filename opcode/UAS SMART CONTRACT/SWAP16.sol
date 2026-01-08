// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodeSWAP16 {
    function run() public pure returns (uint256) {
        assembly {
            let a := 1 let b := 2 let c := 3 let d := 4
            let e := 5 let f := 6 let g := 7 let h := 8
            let i := 9 let j := 10 let k := 11 let l := 12
            let m := 13 let n := 14 let o := 15 let p := 16
            mstore(0x00, a)
            return(0x00, 0x20)
        }
    }
}
