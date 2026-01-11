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
| No | Opcode      | Hex    | Fungsi Opcode     | Penjelasan Singkat                                                           | Contoh Eksekusi di Contract        | Output / Hasil             |
| -- | ----------- | ------ | ----------------- | ---------------------------------------------------------------------------- | ---------------------------------- | -------------------------- |
| 1  | DIV         | `0x04` | Pembagian         | Membagi dua nilai dari stack EVM. Jika pembagi 0, hasilnya 0 (tidak revert). | `div(10, 2)`                       | `5`                        |
| 2  | ISZERO      | `0x15` | Cek Nol           | Mengecek apakah nilai bernilai 0. Mengembalikan 1 jika nol, 0 jika bukan.    | `iszero(0)`                        | `1`                        |
| 3  | ORIGIN      | `0x32` | Asal Transaksi    | Mengambil alamat EOA yang memulai transaksi pertama kali.                    | `origin()`                         | `0x5B38...eddC4` (address) |
| 4  | EXTCODEHASH | `0x3F` | Hash Kode         | Mengambil hash bytecode dari suatu address.                                  | `extcodehash(origin())`            | `0x0` (karena EOA)         |
| 5  | MLOAD       | `0x51` | Baca Memory       | Membaca data dari memory EVM di alamat tertentu.                             | `mstore(0x80, 42)` → `mload(0x80)` | `42`                       |
| 6  | MCOPY       | `0x5E` | Salin Memory      | Menyalin data antar lokasi memory (disimulasikan di EVM London).             | Salin `99` dari `0x80` ke `0xA0`   | `99`                       |
| 7  | PUSH12      | `0x6B` | Push 12 Byte      | Memasukkan nilai literal 12 byte ke stack.                                   | `0x1234567890abcdef123456`         | Nilai tersebut             |
| 8  | PUSH25      | `0x78` | Push 25 Byte      | Memasukkan nilai literal 25 byte ke stack.                                   | `0x010203...131415`                | Nilai tersebut             |
| 9  | DUP6        | `0x85` | Duplikasi Stack   | Menggandakan elemen ke-6 dari stack ke posisi teratas.                       | Variabel ke-6 diduplikasi          | Nilai elemen ke-6          |
| 10 | SWAP3       | `0x92` | Tukar Stack       | Menukar elemen teratas dengan elemen ke-4 di stack.                          | Urutan stack diubah                | Tidak terlihat langsung    |
| 11 | SWAP16      | `0x9F` | Tukar Stack       | Menukar elemen teratas dengan elemen ke-17 di stack.                         | Urutan stack diubah                | Tidak terlihat langsung    |
| 12 | REVERT      | `0xFD` | Batalkan Eksekusi | Menghentikan eksekusi dan membatalkan semua perubahan state.                 | `revert(0,0)`                      | ❌ Transaksi gagal (revert) |

## Tools
- Remix IDE (https://remix.ethereum.org/#lang=en&optimize&runs=200&evmVersion&version=soljson-v0.8.31+commit.fd3a2265.js)
- Solidity ^0.8.20
- EVM Version: London

## Author
Fajri

Opcode REVERT (0xFD) digunakan untuk menghentikan eksekusi kontrak secara sengaja dan membatalkan seluruh perubahan state. 
Oleh karena itu, ketika fungsi dijalankan di Remix IDE, transaksi akan ditandai sebagai gagal (revert), yang merupakan perilaku yang diharapkan.
