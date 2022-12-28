# Docker Cheat-Sheet
## Command Line
COMMAND | DESCRIPTION
---|---
`docker images` | Melihat list image
`docker pull NAME_IMAGE:VERSION` | Download image dari docker hub
`docker container ls` or `docker ps` | Melihat list container yang running
`docker container ls --all` or `docker ps -a` | Melihat list container yang running dan tidak running
`docker container stop ID_CONTAINER` or `docker stop ID_CONTAINER` | Menghentikan container
`docker container rm ID_CONTAINER` or `docker rm ID_CONTAINER` | Menghapus container yg berhenti
`docker image rm ID_IMAGE` | Menghapus image
`docker build --tag NAME_IMAGE:VERSION .` | Build image
`docker container create --name NAME_CONTAINER -p PORT_OUT:PORT_IMAGE NAME_IMAGE:VERSION` | Membuat container
`docker tag NAME_IMAGE_LOCAL:VERSION NAME_IMAGE_NEW:VERSION` | Ganti nama tag
`docker push NAME_IMAGE:VERSION` | Upload image ke docker hub
`docker login` | Login docker kita dengan docker hub
`docker container create --name NAME_CONTAINER -p PORT_OUT:PORT_IMAGE -e NAME_ENV=VALUE NAME_IMAGE:VERSION` | Membuat image dengan environment
`docker container inspect NAME_CONTAINER` | Melihat detail info container
`docker network create NAME_NETWORK` | Membuat network
`docker network ls` | Melihat list network
`docker network connect NAME_NETWORK NAME_CONTAINER` | Memasukkan container dalam sebuah network
`docker system df` | Melihat semua info images dan container
`docker build --tag NAME_IMAGE:1.0 .` | Build Image dengan Name, Tag, dan Versi
`docker build -f NAME_FILE --tag NAME_IMAGE:1.0 .` | Build Image dengan Name Berbeda, Tag, dan Versi
`docker run -p PORT_EXIT:PORT_CONTAINER -d NAME_IMAGE:1.0` | Run Image dengan, Port, Name dan Tag
`docker exec ID_CONTAINER ls /usr/share/nginx/html` | Melihat isi container
`docker exec -it ID_CONTAINER /bin/sh` | Run bash
`docker exec ID_CONTAINER pm2 log` | Lihat Log PM2
`docker system prune -a --volumes` | Remove All Data
`docker rmi $(docker images -f dangling=true -q)` | Remove Image Status `<none>`
`docker image prune -f` | Remove Image Status `<none>`
`docker rm $(docker ps -a -q -f status=exited)` | Remove Container Status Exit
`docker container prune` | Remove Container Status Exit
`sudo chmod 666 /var/run/docker.sock` | Memberikan akses, cth, jenkins
## Docker Compose
COMMAND | DESCRIPTION
---|---
`docker-compose -f NAME_FILE up -d` | Run Docker Compose
`docker-compose -f NAME_FILE down` | Stop Docker Compose

## Script Other
Runnig Docker Compose Global
`
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p /usr/local/lib/docker/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.14.2/docker-compose-linux-x86_64 -o /usr/local/lib/docker/cli-plugins/docker-compose
`

## Referensi
https://github.com/xcad2k/cheat-sheets/blob/main/devops/docker.md
