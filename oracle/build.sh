
dockerd &
/home/coder/docker-images/OracleDatabase/SingleInstance/dockerfiles/buildContainerImage.sh -v 19.3.0 -e
docker save -o /home/oracle_db_19.3.0-ee.tar oracle/database:19.3.0-ee
