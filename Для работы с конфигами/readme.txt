Гайд по использованию страшной и жуткой скриптины для обновления по Ansible

1) Необходимо указать в файле  /etc/ansible/hosts логин-пароли к серверам, добавив в конце файла
ИЛИ
Создать новый файл с локальным списком серверов (hosts1)

[localdomain]
host0.example.org ansible_host=192.168.1.148 ansible_user=guard ansible_password=3123123 ansible_sudo_pass=3123123
host1.example.org ansible_host=192.168.0.105 ansible_user=guard ansible_password=3123123 ansible_sudo_pass=3123123

!Важно! 

Для подключения необходимо как минимум один раз подключиться по SSH ВРУЧНУЮ
Возможно необходимо будет установить sshpass
На случай отсутствия папки конфига в нужной директории лежит резервная копия (ansible)
 
2) Изменить в файле files_to_backup.yml список сохраняемых файлов

3) Запустить сбор копий конфигов командой

ansible-playbook -i /etc/ansible/hosts backup.yml
ИЛИ для локального набора серверов:
ansible-playbook -i hosts1 backup.yml

4) Запустить отправку изменённых копий конфигов командой

ansible-playbook -i /etc/ansible/hosts restore_from_backup.yml
ИЛИ для локального набора серверов:
ansible-playbook -i hosts1 restore_from_backup.yml
