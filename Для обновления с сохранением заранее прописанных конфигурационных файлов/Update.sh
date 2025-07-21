!#/bin/bash

#Необходимо указать имя файла как он есть в соответствующей папке, или абсолютный путь

#Файл со списком хостов для обновления конфигов 
HOSTSFILESAVECONFIG="host1"
#Файл со списком хостов для обновления программы
HOSTSFILEUPDATE="host1"

cd ../Для\ работы\ с\ конфигами/
ansible-playbook -i $HOSTSFILESAVECONFIG backup.yml
cd ../Для\ обновления\ без\ сохранения
ansible-playbook -i $HOSTSFILEUPDATE sendscript.yml
cd ../Для\ работы\ с\ конфигами/
ansible-playbook -i $HOSTSFILESAVECONFIG restore_from_backup.yml
cd ../Для\ обновления\ с\ сохранением\ заранее\ прописанных\ конфигурационных\ файлов
ansible-playbook -i ../Для\ обновления\ без\ сохранения/$HOSTSFILEUPDATE restart.yml




