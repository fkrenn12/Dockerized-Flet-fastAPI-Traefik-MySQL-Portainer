# How to generate passwd file
* Copy file with username:password into passwd <br>
* In docker-compose.yml change line 9: -> remove the :ro option <br>
* Start the docker-compose.yml <br>
* Create Terminal in running mosquitto container <br>
* cd mosquitto/config <br>
* execute mosquitto_passwd -U passwd <br>
* Down container <br>
* in docker-compose.yml change line 9: -> insert again :ro option <br>

https://mosquitto.org/man/mosquitto-conf-5.html
