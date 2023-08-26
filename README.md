docker-compose build
docker-compose up

//to execute command
docker exec -it <container_name_or_id> <command_to_run>
//to open a shell within the container
docker exec -it <container_name_or_id> sh
