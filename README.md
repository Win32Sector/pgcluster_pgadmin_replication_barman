## INSTALL test_task project

1. Create VM or some server with CentOS 7 and give external ip to it.
2. Execute on your server basic_script_ansible_install.sh for create tomcat user and add key for jenkins access.
2. Go to the jenkins https://35.240.74.178, login and add your server to jenkins settings in `Manage Jenkins -> SSH remote hosts`
3. Here execute `basic server setup` for install tools and basic security
4. Then, execute  `project deploy` for deploy project with docker-compose.
5. For check, what was deployed, you can go to your server and execute `docker ps`. when pgpool would be in healthy status, you can go to the link http://<external_ip_of_your_server> and go to the pgadmin with
```
username: pgadmin@example.com
pass:     admin123
```

6. You can check with switch off one of web nodes of pg admin, or pgmaster, pgslave.