To start docker-container use:\
sudo docker-compose up\
\
To start a script in the docker-container use:\
sudo docker exec mysqltest_db_1 /var/opt/timestamp.sh\
\
Making process\
\
Starting mysql database docker-container. The container described in docker-compose.yml file and starts by command:\
sudo docker-compose up\
![alt text](https://github.com/13virus31/test-task-timebook/blob/main/img/1_docker_start.png)\
\
After starting the container, I checked the access to mysql from the host machine.\
![alt text](https://github.com/13virus31/test-task-timebook/blob/main/img/2_connecting_from_host.png)\
\
To put a script into the container, a volume was described in docker-compose.yml file.\
![alt text](https://github.com/13virus31/test-task-timebook/blob/main/img/3_moving_script_into_container.png)\
\
Unfortunately, script must be started by hand using this comand from the host machine:\
sudo docker exec mysqltest_db_1 /var/opt/timestamp.sh\
![alt text](https://github.com/13virus31/test-task-timebook/blob/main/img/4_starting_script.png)\
\
In the result we get a database with a table inside. This table fills with timestamps every 5 seconds.\
![alt text](https://github.com/13virus31/test-task-timebook/blob/main/img/5_script_result.png)\
