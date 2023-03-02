# GIT Cheat-Sheet
## Download dan Install
- [Download](https://git-scm.com/downloads)

## Configuration
Set Nama dengan perintah berikut:
```bash
  git config --global user.name "NAME"
```
Set Email dengan perintah berikut:
```bash
  git config --global user.email "EMAIL"
```

## Command Line BASIC
COMMAND | DESCRIPTION
---|---
`git --version` | Melihat versi GIT
`git init` | Initial git repository
`git status` | Melihat perubahan terjadi
`git add .` | Menambahkan semua perubahan kedalam stage
`git commit -m "DESCRIPTION"` | Menambahkan ke repository secara permanent yg ada dalam stage
`git diff` | Melihat semua perubahan
`git clean -f` | Membatalkan semua penambahan file
`git restore FILE_NAME` | Membatalkan semua perubahan/penghapusan file
`git restore --staged FILE_NAME` | Memindahkan file dalam stage ke working directory
`git log"` | Melihat semua riwayat
`git log --oneline` | Melihat semua riwayat dengan satu baris
`git log --oneline --graph` | Melihat riwayat dengan hubungan dengan branchnya
`git show HASH` | Melihat detail dari commit
`git show head` | Melihat detail dari commit terakhir
`git diff HASH1 HASH2` | Membandingkan perubahan dari file dengan hash
`git reset <MODE> HASH` | Reset commit MODE[--soft, --mixed(default), --hard] (Menimpa commit setelah hash yg di tentukan)
`git reset --hard` | Menghapus semua perubahan file
`git commit --amend -m "DESCRIPTION"` | Mengganti deskripsi yang sudah di commit
`git checkout HASH -- FILE_NAME` | Melihat keadaan file pada commit tetentu
`git checkout HASH` | Pindah pada commit tertentu dengan keadaan semua file pada hash tersebut
`git revert HASH` | Mengembalikkan keaadaan file awal pada commit tertentu dan membuat commit baru
`git blame FILE_NAME` | Melihat detail file (HASH, Author, Date, Nama Commit)
`git switch BRANCH_NAME` | Berpindah ke branch lain
`git switch -c NEW_BRANCH_NAME` | Membuat branch baru dari branch sekarang
`git restore --staged *` | Membatalkan semua file yg sudah ada dalam staged
`git restore *` | Membatalkan semua file yg berubah

## Command Line BRANCH
COMMAND | DESCRIPTION
---|---
`git branch --show-current` | Melihat nama branch saat ini
`git branch BRANCH_NAME` | Membuat branch baru di ambil dari posisi branch saat di buat
`git checkout -b NEW_BRANCH_NAME BRANCH_NAME_BASE_ON` | Membuat branch dari base on branch lain
`git branch --list` or `git branch` or `git branch -a` | Melihat semua list branch
`git switch BRANCH_NAME` or `git checkout BRANCH_NAME` | Pindah branch
`git branch -m NEW_BRANCH_NAME` | Merubah nama branch saat ini dengan nama baru
`git branch -d BRANCH_NAME` or `git branch --delete BRANCH_NAME` | Menghapus branch, dengan syarat jangan berada di posisi branch yg dihapus
`git merge BRANCH_NAME` | Menggabungkan 2 branch dan perubahan akan masuk dibranch saat ini
`git merge --abort` | Membatalkan merge
`git cherry-pick HASH` | Memasukkan commit tertentu ke branch saat ini
`git tag NAME_TAG HASH` | Membuat tag pada sebuah commit
`git tag -l` or `git tag --list` | Melihat semua list tag
`git checkout NAME_TAG` | Pindah commit dengan nama tag
`git tag -d NAME_TAG` or `git tag --delete NAME_TAGE` | Menghapus nama tag
`git stash push -m "DESCRIPTION"` | Menyimpan sementara perubahan file
`git stash list` | Melihat semua list penyimpanan sementara perubahan file
`git stash show STASH_ID` | Melihat detail perubahan pada stash tertentu
`git stash apply STASH_ID` | Menerapkan suatu stash
`git stash drop STASH_ID` | Menghapus stash tertentu
`git stash clear` | Menghapus semua stash
`git rebase BRANCH_NAME` | Menggabungkan 2 branch. Syarat harus di branch yg akan di rebase dan masukkan branch tujuan. Perbedaan dengan merge membuat grafik lebih rapi jadi 1 line
`git merge BRANCH_NAME_REBASE` | Memajukan head, agar branch yg masuk dari branch rebase bisa setara
`git merge --squash BRANCH_NAME` | Sama dengan merge biasa, tapi commit dari suatu branch akan jadi 1 commit. Setelah itu lakukan commit seperti biasa agar masuk pada branch.

## Command Line REMOTE
COMMAND | DESCRIPTION
---|---
`git push origin --tags` | Push tag
`git fetch origin` | Mensinkronkan branch yang ada di cloud
`git push -u origin BRANCH_NAME` | Upload perubahan local ke cloud
`git checkout --track origin/BRANCH_NAME` | Menarik branch di cloud
`git remote update origin --prune` | Update branch origin local and delete yg tidak ada di cloud
`git remote rm origin` | Menghapus url git
`git remote add origin URL_GIT` | Menambah url git

## Alias (Optional)
membuat command line alias atau mempersingkat command
1. Contoh alias `commit` dengan `ko`
```bash
  git config --global alias.ko commit
```
2. Contoh alias `commit` dengan `komit`
```bash
  git config --global alias.komit commit
```
3. Contoh alias `log --oneline` dengan `logone`
```bash
  git config --global alias.logone "log --oneline"
```

## Role Back
1. Role Back yg sudah di push
```bash
  git reset --hard HEAD~1
  git push origin +BRANCH_NAME
```
2. Role Back merge yg sudah di push (Role akun harus admin)
```bash
  git reset --hard HASH
  git push origin BRANCH_NAME --force
```
## Referensi
[Programmer Zaman Now](https://www.youtube.com/watch?v=fQbTeNX1mvM)