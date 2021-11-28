# GIT Cheat-Sheet
## Download dan Install
- [Download](https://git-scm.com/downloads)

## Configuration
Set Nama dengan perintah berikut:
```bash
  git config --global user.name "NAMA"
```
Set Email dengan perintah berikut:
```bash
  git config --global user.email "EMAIL"
```

## Command Line
COMMAND | DESCRIPTION
---|---
`git --version` | Melihat versi GIT
`git init` | Initial git repository
`git status` | Melihat perubahan terjadi
`git add .` | Menambahkan semua perubahan kedalam stage
`git commit -m "DESKRIPSI"` | Menambahkan ke repository secara permanent yg ada dalam stage
`git diff` | Melihat semua perubahan
`git clean -f` | Membatalkan semua penambahan file
`git restore NAMA_FILE` | Membatalkan semua perubahan/penghapusan file
`git restore --staged NAMA_FILE` | Memindahkan file dalam stage ke working directory
`git log"` | Melihat semua riwayat
`git log --oneline` | Melihat semua riwayat dengan satu baris
`git log --oneline --graph` | Melihat riwayat dengan hubungan dengan branchnya
`git show HASH` | Melihat detail dari commit
`git show head` | Melihat detail dari commit terakhir
`git diff HASH1 HASH2` | Membandingkan perubahan dari file dengan hash
`git reset <MODE> HASH` | Reset commit MODE[--soft, --mixed(default), --hard] (Menimpa commit setelah hash yg di tentukan)
`git reset --hard` | Menghapus semua perubahan file
`git commit --amend -m "DESKRIPSI"` | Mengganti deskripsi yang sudah di commit
`git checkout HASH -- NAMA_FILE` | Melihat keadaan file pada commit tetentu
`git checkout HASH` | Pindah pada commit tertentu dengan keadaan semua file pada hash tersebut
`git checkout NAMA_BRANCH` | Pindah branch
`git branch --show-current` | Melihat nama branch saat ini
`git revert HASH` | Mengembalikkan keaadaan file awal pada commit tertentu dan membuat commit baru
`git blame NAMA_FILE` | Melihat detail file (HASH, Author, Date, Nama Commit)
`git branch -a` | Melihat semua branch
`git merge NAMA_BRANCH` | Menggabungkan dengan branch saat ini
`git push -u origin NAMA_BRANCH` | Upload perubahan local ke cloud
`git checkout -b NAMA_BRANCH_BARU NAMA_BRANCH_BASE_ON` | Membuat branch dari base on branch lain
`git stash push -m "DESKRIPSI"` | Menyimpan sementara perubahan file
`git stash list` | Melihat semua penyimpanan sementara perubahan file
`git stash apply "STASH@{N}"` | Apply suatu list di penyimpanan sementara
`git stash drop STASH@{INDEX}` | Delete suatu list di penyimpanan sementara
`git stash clear` | Menghapus semua penyimpanan sementaara perubahan file
`git stash clear` | Menghapus semua penyimpanan sementaara perubahan file
`git tag NAMA_TAG` | Menambahkan tag
`git push origin --tags` | Push tag
`git fetch origin` | Mensinkronkan branch yang ada di cloud

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
  git push origin +NAMA_BRANCH
```
2. Role Back merge yg sudah di push (Role akun harus admin)
```bash
  git reset --hard HASH
  git push origin NAMA_BRANCH --force
```
## Referensi
[Programmer Zaman Now](https://www.youtube.com/watch?v=fQbTeNX1mvM)