// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OpcodeREVERT {

    function run(uint256 x) public pure returns (uint256) {
        assembly {
            if iszero(x) {
                revert(0, 0)
            }
            mstore(0x00, x)
            return(0x00, 0x20)
        }
    }
}
