# RegExp Cheat-Sheet

## Modifiers
Symbol | DESCRIPTION
---|---
`g` | global, melakukan pencarian di semua text tidak hanya pada text pertama yang cocok
`i` | case-insensitive, tidak memperdulikan huruf kecil dan huruf besar
`m` | multiline, melakukan pencarian tidak hanya di line pertama namun di semua line

## Metacharacters
Symbol | DESCRIPTION
---|---
`.` | mencari satu karakter yang bebas
`\w` | word character, semua huruf alphabet termasuk (a-zA-Z0-9_)
`\W` | non-word character, semua huruf `bukan` alphabet termasuk (a-zA-Z0-9_)
`\d` | digit, semua karakter angka 0-9
`\D` | non-digit, semua karakter `bukan` angka
`\s` | whitespace, karakter spasi termasuk dengan simbol `\n, \t, \r, \v, \f`
`\S` | non-whitespace, karakter `bukan` spasi termasuk dengan simbol `\n, \t, \r, \v, \f`
<code>&#124;</code> | different possibilities, karakter atau untuk mencari beberapa kemungkinan

## Quantifiers
Symbol | DESCRIPTION
---|---
`+` | mencari satu atau lebih karakter yang ditentukan dan berulang
`*` | mencari 0 atau lebih karakter yang ditentukan dan berulang
`?` | mencari 0 atau 1 kemungkinan
`^` | jika tanda `^` diluar simbol `[]` maka berarti mencari awal karakter didalam text. Jika `^` didalam simbol `[]` maka berarti negasi. Berarti mencari karakter yg bukan termasuk dari karakter tertentu contoh 
`?=n` | kemungkinan yang ada karakter `n`
`?!n` | kemungkinan yang bukan karakter `n`
`[^abc]` | bukan karakter `a` `b` `c`
`$` | mencari karakter di akhir text.
`{2,3}` | mencari karakter dalam range yaitu 2 sampai 3.
`{2,}` | mencari jumlah karakter 2 dan diatasnya
`{2}` | mencari 2 karakter yang spesifik

## Brackets
Symbol | DESCRIPTION
---|---
`[abc]` | mencari satu karakter yang cocok yaitu `a` `b` `c`
`[^abc]` | mencari satu karakter yang `bukan` huruf `a` `b` `c`
`[0-9]` or `[\d]` | mencari satu angka dari 0 sampai 9
`[^0-9]` or `[^\d]` | mencari satu angka yang bukan dari 0 sampai 9
`[a-z]` | mencari satu huruf dari a sampai z yang hurufnya huruf `kecil`
`[A-Z]` | mencari satu huruf dari a sampai z yang hurufnya huruf `besar`
`[a-Z]` | mencari satu huruf dari a sampai z yang tidak memperdulikan huruf besar kecil
`()` | group yang ada dalam simbol `()`

## Examples
Symbol | DESCRIPTION
---|---
`/abc/` | mencari kata `abc` yang identik dalam text
<code>/cat&#124;dog/</code> | mencari kata `cat` atau `dog` yang identik dalam text
`/cat/i` | mencari kata `cat` tanpa memperdulikan huruf besar kecil
`/hu./` | mencari karakter depan `hu` dan simbol `.` merupakan karakter apa saja setelahnya. contoh `huh` `hug` `hum`
`/.un/` | mencari karakter belakang `un` dan simbol `.` merupakan karakter apa saja didepannya. contoh `sun` `fun` `run`
`/u.n/` | mencari karakter diantara `u` dan `n` dan simbol `.` merupakan karakter apa saja.
`/.u.n./` | mencari karakter yang sesuai dengan `u` dan `n` dan simbol `.` karakter apa saja
`/b[a,i,u]g/` | mencari karakter awalan `b`, ditengah harus sesuai huruf `a` `i` `u` d dan diakhir harus huruf g. contoh `bag` `big` `bug`. Kata yang tidak cocok seperti `bog` `bsg`
`/[a-e]at/` | mencari karakter awalan `a` sampai `e` dan diakhiri dengan `at`. Contoh `cat` `bat`
`/[a-z0-5]/` | mencari karakter `a` sampai `z` atau `0` sampai `5`
`/[^0-9]/` | mencari karakter bukan `0` sampai `9`
`/s+/` | mencari karakter `s` dan simbol `+` seterusnya minimal 1 karakter. Contoh `s` `ss`
`/t[a-z]*?i/` | mencari karakter `t` dan setelah itu, simbol `[a-z]` huruf `a` sampai `z`, simbol `*` minimal 0 atau lebih, simbol `?` mengambil nilai pertama atau terkecilnya dan diakhiri dengan karakter `i`. Contoh text `titanic` dan hasilnya `ti`
`/^Ricky/` | mencari kata `Rizky` diawal text. Simbol `^` awal text
`/story$/` | mencari kata `story` diakhir text. Simbol `$` akhir text
`/story$/` | mencari kata `story` diakhir text. Simbol `$` akhir text
`/a{3,5}h/` | mencari huruf `a` yang berjumlah antara `3` sampai `5` dan diakhiri dengan huruf `h`. Contoh `aaaah` maka hasilnya akan true atau sesuai
`/a{3,}h/` | mencari huruf `a` yang berjumlah minimal `3` dan diatasnya lalu diakhiri dengan huruf `h`.
`/a{3}h/` | mencari huruf `a` yang berjumlah `3` dan diakhiri dengan huruf `h`.
`/colou?r/` | mencari kemungkinan kemunculan huruf `u` minimal 0 atau 1. Contoh text `colour` akan bernilai true dan `color` juga bernilai true
`/(?=\w{6,})(?=\D*\d{2})/` | simbol `?=` kemunculan yg ada dan ketemu sesuai pattern maka akan maju satu karakter untuk melihat berikutnya. Penjelasan simbol `(?=\w{6,})` mencari huruf alphabet (termasuk angka) minimal 6 dan lebih besar, lalu simbol `(?=\D*\d{2})` minimal 0 atau lebih bukan number dan harus ada 2 karakter number. Penjelasan semua adalah mencari karakter minimal 6 dan harus ada 2 digit number
`/(\w+)\s\1/` | mencari karakter alphabet minimal 1 dan ada spasi dan berulang. simbol `\1` untuk didalam  group atau simbol `()`
`/silver/` | cari text `silver` dan ganti dengan `blue`. codenya `text.replace(/silver/, "blue")`
`/(\w+)\s(\w+)/` | cari kata pertama ada spasi dan kata kedua. Selanjutnya mebalikkan kata dengan code `"Code Camp".replace(/(\w+)\s(\w+)/, '$2 $1')` hasilnya `Camp Code`

## Referensi
https://www.w3schools.com/jsref/jsref_obj_regexp.asp 
https://www.tutorialspoint.com/javascript/javascript_regexp_object.htm 
https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/#regular-expressions 
