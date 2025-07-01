#!/bin/bash

#Папка хранения сервиса
SERVICEFOLDER=/var/lib/wimlc
#Имя сервиса для остановки перед удалением
SERVICENAME="ufw"


#При существовании рабочей дирректории останавливает сервис и удаляет её
if [ -d "$file" ];

then
echo "Останавливаем сервис..."
sudo systemctl stop $SERVICENAME
sudo systemctl disable $SERVICENAME
echo "Сервис остановлен, удаляем рабочую директорию"
rm -rf $SERVICEFOLDER
echo "Директория удалена"

else
echo "Не удалось найти директорию приложения"
fi


echo "Создание дирректории"
mkdir $SERVICEFOLDER
echo "Дирректория создана"

exit 0

