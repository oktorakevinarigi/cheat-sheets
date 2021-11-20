# Docker Cheat-Sheet
## Code Example
COMMAND | DESCRIPTION
---|---
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
## Docker Compose
COMMAND | DESCRIPTION
---|---
`docker-compose -f NAME_FILE up -d` | Run Docker Compose
`docker-compose -f NAME_FILE down` | Stop Docker Compose

## Referensi
https://github.com/xcad2k/cheat-sheets/blob/main/devops/docker.md