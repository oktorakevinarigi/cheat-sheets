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
`^` | jika tanda `^` diluar simbol `[]` maka berarti mencari awal karakter didalam text. Jika `^` didalam simbol `[]` maka berarti negasi. Berarti mencari karakter yg bukan termasuk dari karakter tertentu contoh `[^abc]` bukan karakter `a` `b` `c`
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

## Examples
Symbol | DESCRIPTION
---|---
`/abc/` | mencari kata `abc` yang identik dalam text
<code>/cat&#124;dog/</code> | mencari kata `cat` atau `dog` yang identik dalam text
`/cat/i` | mencari kata `cat` tanpa memperdulikan huruf besar kecil

## Referensi
https://www.w3schools.com/jsref/jsref_obj_regexp.asp 
https://www.tutorialspoint.com/javascript/javascript_regexp_object.htm 
https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/#regular-expressions 
