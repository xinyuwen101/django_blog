sh scripts/dockersetup.sh
docker-compose build
docker-compose up -d
sh scripts/db_restore.sh
sh scripts/run_start.sh