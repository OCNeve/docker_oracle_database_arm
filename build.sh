docker build -t oracle_compile ./oracle/
docker run -it --user root --privileged --name oracle_compile oracle_compile /bin/sh

docker cp oracle_compile:/home/oracle_db_19.3.0-ee.tar ./oracle_db_19.3.0-ee.tar
docker load -i ./oracle_db_19.3.0-ee.tar

volume_name=$(docker inspect --format '{{ range .Mounts }}{{ if eq .Destination "/var/lib/docker" }}{{ .Name }}{{ end }}{{ end }}' oracle_compile)

docker rm -f oracle_compile
docker image rm oracle_compile

if [ -n "$volume_name" ]; then
	docker volume rm "$volume_name"
fi