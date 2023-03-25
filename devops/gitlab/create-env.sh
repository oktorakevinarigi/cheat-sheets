#!/bin/bash

# Menghitung jumlah baris pada teks
count=$(echo -e "$ENV" | wc -l)

# Membuat file baru
touch .env

# Melakukan perulangan sebanyak jumlah baris pada teks
while [ 1 -le $count ]
do
  line=$(echo "$ENV" | sed -n "${i}p")
  echo "$line" >> .env
  i=$((i+1))
done
