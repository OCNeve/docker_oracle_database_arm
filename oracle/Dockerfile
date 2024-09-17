FROM docker:latest
RUN ["apk", "add", "--no-cache", "bash"]
ENV DOCKER_HOST=unix:///var/run/docker.sock
COPY . /home/coder/docker-images/
ENTRYPOINT ["/bin/bash", "/home/coder/docker-images/build.sh"]
# on host 

# docker build -t oracle_compile .

# docker run -it --user root --privileged --name oracle_compile oracle_compile /bin/sh


# in container

# dockerd &

# /bin/bash /home/coder/docker-images/OracleDatabase/SingleInstance/dockerfiles/buildContainerImage.sh -v 19.3.0 -e

# docker save -o /home/oracle_db_19.3.0-ee.tar oracle/database:19.3.0-ee

# on host 

# docker cp oracle_compile:/home/oracle_db_19.3.0-ee.tar ~/Downloads/oracle_db_19.3.0-ee.tar

# docker load -i ~/Downloads/oracle_db_19.3.0-ee.tar

# docker run -d \
#  --name oracle-db \
#  -p 1521:1521 \
#  -p 5500:5500 \
#  -e ORACLE_PWD=mysecurepassword \
#  -e ORACLE_DB_NAME=supinfo \
#  -e ORACLE_ALLOW_REMOTE=true \
#  oracle/database:19.3.0-ee
