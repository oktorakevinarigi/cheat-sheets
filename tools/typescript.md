# Typescript Cheat-Sheet

## Utility Types
Type | DESCRIPTION
---|---
`Partial<TYPE>` | Membuat semua `TYPE` menjadi optinal
`Required<TYPE>` | Membuat semua `TYPE` menjadi wajib
`Omit<TYPE, KEYS>` | Menggunakan semua `TYPE` dan menghapus yg tidak digunakan dengan memasukkan `KEY`. Jika ada beberapa key bisa menggunakan `|` untuk memisahkan
`Pick<TYPE, KEYS>` | Semua `TYPE` yg ada tapi yang digunakan hanya dalam `KEY` saja
`Partial<Pick<TYPE, KEYS>>` | Semua `TYPE` menjadi optional, dengan adanya `Pick` maka properti yg digunakan hanya  `KEYS` yg sudah di tentukan
`Readonly<TYPE>` | Semua `TYPE` hanya dapat di baca saja. Contoh jika ada type `name` dengan value `string`, terus di assign dengan sebuah string terus jika terjadi override value maka akan error.
`Exclude<UNION_TYPE, KEYS>` | Semua `UNION_TYPE` akan digunakan kecuali properti yg ada dalam `KEY`.
`Extract<TYPE, KEYS>` | Mencari `TYPE` sesuai yg ada dalam `KEY` dan mengektrak.
`ReturnType<FUNCTION>` | Mendapatkan `TYPE` dari sebuah function yg memiliki return satu `TYPE`.
`ReturnType<typeof FUNCTION>` | Mendapatkan `TYPE` dari sebuah function yg memiliki return `TYPE` berupa object.
`Parameters<FUNCTION>` | Mendapatkan `TYPE` berupa Tuple dari parameter sebuah function.
`NonNullable<UNION_TYPE>` | Dari sebuah `UNION_TYPE` jika ada type null maka akan di exclude atau dihapus.
`Awaited<TYPE>` | Mendapatkan `TYPE` dari sebuah TYPE promise maka dapat menggunakan Awaited
`Awaited<ReturnType<typeof FUNCTION>>` | Jika ada function yg memiliki return promise berupa type object

## Referensi
https://www.youtube.com/watch?v=EU0TB_8KHpY