#!/usr/bin/env bash

yum install -y epel-release
yum update -y
useradd tomcat -m
mkdir /home/tomcat/.ssh
touch /home/tomcat/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4ouLsvJnVQa3PhVBccaOnRjTTmG0L7n2v3Yt+JbuLx5jA5ni6lrDgVe36dc8hdRv8FnGQpiXay5/GMK8nmjxarbmZGXv48DDPLGduhFIn1IVbIXleZxsc4g0rE21KrZS5wmOr0uQ1xRSEeQrGi5K4pu40ejvO3qXKmUtMcZWO4H6mcF4hF7T39zwNJjHs46/DM7GpPatFwcROkbdNrQsI7BjZY0shK0jeWYcQkNbFX8+uH6+dAl50mosjz2ccRD0RhVSH9zvErpWNNvghComQ0/4Uo8ApI7Q7twl79weqHaYm+7KzWg/HU3bXoeLhpwM9s0BLmAsT+9irP5trXfd1 tomcat" >> /home/tomcat/.ssh/authorized_keys
chown -R tomcat:tomcat /home/tomcat/.ssh
chmod 700 /home/tomcat/.ssh
chmod 600 /home/tomcat/.ssh/authorized_keys
echo "tomcat ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/tomcat
