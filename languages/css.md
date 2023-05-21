# CSS Cheat-Sheet

## Flex Box
Sesuatu yang ada dalam flexbox akan mencair/mengikuti ruang jika lebarnya melebihi viewport, ini terjadi jika belum ada minimum width/height. Contoh Jika lebarnya melebihi viewport maka dalam flexbox akan menyesuaikan.

Property | DESCRIPTION
---|---
`justify` | untuk memposisikan sesuatu di sepanjang `primary axis`.
`align` | untuk memposisikan sesuatu di sepanjang `cross axis`.
`content` | sekelompok "barang" yang dapat didistribusikan.
`items` | item tunggal yang dapat diposisikan secara individual.
`flex-basis` | sama seperti `height` dan `width` tapi berpatok pada `primary axis`. Property diberikan pada anak untuk mengatur `height` dan `width`. Jika ada beberapa component dan memberikan ukuran melebihi ruang kosong maka component lain akan di sesuaikan. Dalam kasus ini tidak akan pernah melebihi ruang induk, jika melebihi ruangan induk semua component akan disusutkan secara proposional.
`flex-grow` | mengisi ruang kosong berpatok pada `primary axis`. Property diberikan pada anak untuk memenuhi runag yang disediakan. Nilainya berupa number `0`, `1`, `2` dst. Jika digunakan beberapa component anak maka akan dibagi sesuai jumlah ruang ada.
`flex-shrink` | jika ruang induk penuh dan ada penyusutan, maka component yang ada didalamnya juga akan menyusut, component yang menggunakan property ini maka akan mendapatkan penyusutan yang lebih banyak. Nilainya berupa number. Berikan nilainya `0` jika tidak ingin menyusutkan componentnya. Jika ada kasus component anak meluap keluar maka penyusutan minimum telah di capai maka tidak bisa di susutkan lagi.
`gap` | memberikan ruang/space diantara component
`margin-left: auto` or `margin-right: auto` | mirip dengan `flex-grow`. Property margin hanya memposisikan component, bukan menambah `height` dan `width` seperti `flex-grow`. Hanya terjadi jika ada ruang kosong. Biasanya digunakan pada header yg memiliki logo sebelah dikiri dan selebalah kanan berupa menu.
`flex-wrap` | jika ukuran anak melebihi ukuran induk maka dengan value `wrap` maka akan dipindah kebawah.
`align-content` | digunakan jika ada component anak yang kebawah menggunakan `flex-wrap: wrap`, dan pengaturan semua anak bisa menggunakan `align-content`. [Contoh](https://www.joshwcomeau.com/css/interactive-guide-to-flexbox/#wrapping-14)
`z-index` | secara default property flexbox memiliki `z-index`, walaupun secara 
eksplisit tidak menulisnya dan tidak mengatur `position: relative` or `position: absolute`

## Referensi
[joshwcomeau](https://www.joshwcomeau.com/css/interactive-guide-to-flexbox/)