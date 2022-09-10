# Ubuntu Cheat-Sheet

## Command Line
COMMAND | DESCRIPTION
---|---
`mongo --host localhost --port 27017` | Masuk mongo dalam docker
`mongo --host localhost --port 27017 admin -u USERNAME -p PASSWORD` | Masuk mongo dalam docker with Auth

## Command Line Example
COMMAND | DESCRIPTION
---|---
`docker exec -it MONGO_CONTAINER_NAME /bin/sh` | Login mongodb docker
`mongodump -d NAME_DB -u USERNAME -p PASSWORD --authenticationDatabase=admin --out /PATH` | Backup DB with Auth
`mongorestore -d NAME_DB -u USERNAME -p PASSWORD  --authenticationDatabase=admin /PATH --drop` | Restore DB with Auth