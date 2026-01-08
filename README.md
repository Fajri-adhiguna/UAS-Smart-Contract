# UAS-Smart-Contract
# EVM Opcode Smart Contracts

Repository ini berisi implementasi smart contract Solidity
untuk memahami dan mempraktikkan opcode pada Ethereum Virtual Machine (EVM).

## Daftar Opcode
1. DIV
2. ISZERO
3. ORIGIN
4. EXTCODEHASH
5. MLOAD
6. MCOPY
7. PUSH12
8. PUSH25
9. DUP6
10. SWAP3
11. SWAP16
12. REVERT

## Tools
- Remix IDE (https://remix.ethereum.org/#lang=en&optimize&runs=200&evmVersion&version=soljson-v0.8.31+commit.fd3a2265.js)
- Solidity ^0.8.20
- EVM Version: London

## Author
Fajri

Opcode REVERT (0xFD) digunakan untuk menghentikan eksekusi kontrak secara sengaja dan membatalkan seluruh perubahan state. 
Oleh karena itu, ketika fungsi dijalankan di Remix IDE, transaksi akan ditandai sebagai gagal (revert), yang merupakan perilaku yang diharapkan.
