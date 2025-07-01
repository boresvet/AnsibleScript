#!/bin/bash

#Папка хранения сервиса
SERVICEFOLDER=/var/lib/wimlc
#Имя сервиса "ufwы" необходимо изменить на нужное
SERVICENAME="ufw"

#testSend2
echo "Запуск сервиса..."
sudo systemctl start $SERVICENAME
sudo systemctl enable $SERVICENAME
echo "Сервис запущен"
