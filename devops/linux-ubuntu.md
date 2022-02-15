# Ubuntu Cheat-Sheet

## Command Line
COMMAND | DESCRIPTION
---|---
`mkdir FOLDER_NAME` | Membuat folder bisa satu atau lebih dari satu
`mkdir .FOLDER_NAME_HIDDEN` | Membuat folder hidden menambahkan `.`
`mkdir 'NAME FOLDER'` or `mkdir NAME\ FOLDER` | Membuat folder menggunakan space
`mkdir FOLDER_NAME/FOLDER_NAME` | Membuat folder didalam sebuah folder
`mkdir FOLDER_NAME/NAME\ FOLDER` | Membuat folder didalam sebuah folder dengan nama folder ada spasi 
`mkdir FOLDER_NAME/{'NAMA FOLDER1', 'NAMA FOLDER2'}` | Membuat folder didalam sebuah folder ada 2 folder dg spasi 
`mkdir -v FOLDER_NAME` | Membuat folder dan memberikan informasi jika sudah dibuat
`mkdir -p FOLDER_NAME/FOLDER_NAME` | Membuat folder dan didalam folder ada folder lagi
`ls` | Melihat list folder dan file
`ls -a` | Melihat list folder dan file dan yg tersembunyi
`sudo mount -a` | Mounting semua yg ada dalam file `fstab`
`sudo nano /etc/fstab` | Masukkan list yg akan di mounting
`/dev/xvdb /home/ubuntu/data ext4 defaults,nofail 0 2` | Contoh isian file fstab
`lsblk` | Melihat list hardisk/partisi
`sudo lsblk -f` | Melihat list hardisk/partisi lebih detail
`sudo mount /dev/xvdb ~/data` | Mountig dengan 1 command line (bersifat sementara)
`sudo mkfs -t TYPE PATH_DISK` | Memformat hardisk TYPE[`ext4`] contoh PATH_DISK: `/dev/xvdb`
`sudo chmod ugo+wx /LOCATION` | Memberikan akses pada folder
`scp -r DIRECTORY USER@IP:DIRECTORY` | Copy file ke server. Hapus `-r` jika ingin copy file
`timedatectl` | Melihat time server
`timedatectl list-timezones` | Melihat zona waktu
`sudo timedatectl set-timezone TIMEZONE` | Melihat zona waktu

## Application
COMMAND | DESCRIPTION
---|---
`sudo apt install zip unzip` | Aplikasi zip atau unzip file