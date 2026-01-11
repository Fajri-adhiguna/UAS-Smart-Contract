# UAS-Smart-Contract
# EVM Opcode Smart Contracts
Gambaran Umum
•	1 opcode = 1 byte (8 bit)
•	Rentang nilai: 0x00 – 0xFF
•	EVM adalah stack-based virtual machine
•	Hampir semua operasi bekerja dengan stack, bukan register

Struktur Dasar EVM
EVM memiliki:
1.	Stack → menyimpan nilai sementara (maks 1024 item)
2.	Memory → sementara, hilang setelah transaksi
3.	Storage → permanen (mahal gas)
4.	Program Counter (PC) → penunjuk opcode
5.	Gas → biaya eksekusi opcode

Repository ini berisi implementasi smart contract Solidity
untuk memahami dan mempraktikkan opcode pada Ethereum Virtual Machine (EVM).

## Daftar Opcode
| No | Opcode (Hex) | Nama Opcode | Kategori      | Fungsi                                  | Input (Stack) | Output (Stack)       | Contoh Hasil    |
| -- | ------------ | ----------- | ------------- | --------------------------------------- | ------------- | -------------------- | --------------- |
| 1  | `0x04`       | DIV         | Arithmetic    | Melakukan pembagian bilangan bulat      | a, b          | a / b                | `10 / 2 = 5`    |
| 2  | `0x15`       | ISZERO      | Comparison    | Mengecek apakah nilai sama dengan nol   | x             | 1 jika x = 0, else 0 | `ISZERO(0) → 1` |
| 3  | `0x32`       | ORIGIN      | Environmental | Mengambil alamat EOA pengirim transaksi | -             | tx.origin            | Alamat wallet   |
| 4  | `0x3F`       | EXTCODEHASH | Account       | Mengambil hash bytecode dari kontrak    | address       | codeHash             | Hash kontrak    |
| 5  | `0x51`       | MLOAD       | Memory        | Membaca data dari memory                | offset        | value                | Data di memory  |
| 6  | `0x5E`       | MCOPY       | Memory        | Menyalin data di memory                 | dst, src, len | -                    | Memory tersalin |
| 7  | `0x6B`       | PUSH12      | Stack         | Push 12 byte data ke stack              | -             | value                | Data 12 byte    |
| 8  | `0x78`       | PUSH25      | Stack         | Push 25 byte data ke stack              | -             | value                | Data 25 byte    |
| 9  | `0x85`       | DUP6        | Stack         | Menduplikasi elemen ke-6 stack          | x6            | x6, x6               | Duplikasi nilai |
| 10 | `0x92`       | SWAP3       | Stack         | Menukar posisi stack ke-1 dan ke-4      | x1,x2,x3,x4   | x4,x2,x3,x1          | Stack tertukar  |
| 11 | `0x9F`       | SWAP16      | Stack         | Menukar stack ke-1 dan ke-17            | x1…x17        | x17…x1               | Stack tertukar  |
| 12 | `0xFD`       | REVERT      | System        | Membatalkan eksekusi dan rollback state | offset, size  | -                    | Transaksi gagal |

## Tools
- Remix IDE (https://remix.ethereum.org/#lang=en&optimize&runs=200&evmVersion&version=soljson-v0.8.31+commit.fd3a2265.js)
- Solidity ^0.8.20
- EVM Version: London

## Author
Fajri

Opcode REVERT (0xFD) digunakan untuk menghentikan eksekusi kontrak secara sengaja dan membatalkan seluruh perubahan state. 
Oleh karena itu, ketika fungsi dijalankan di Remix IDE, transaksi akan ditandai sebagai gagal (revert), yang merupakan perilaku yang diharapkan.
