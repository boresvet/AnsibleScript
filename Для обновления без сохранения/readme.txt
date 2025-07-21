Гайд по использованию страшной и жуткой скриптины для обновления по Ansible

1) Необходимо указать в файле  /etc/ansible/hosts логин-пароли к серверам, добавив в конце файла 

[localdomain]
host0.example.org ansible_host=192.168.1.148 ansible_user=guard ansible_password=3123123 ansible_sudo_pass=3123123
host1.example.org ansible_host=192.168.0.105 ansible_user=guard ansible_password=3123123 ansible_sudo_pass=3123123

!Важно! 

Для подключения необходимо как минимум один раз подключиться по SSH ВРУЧНУЮ
Возможно необходимо будет установить sshpass
На случай отсутствия папки конфига в нужной директории лежит резервная копия (ansible)
 

2) Изменить в файле sendscript.yml по инструкции в комментариях в нём же параметры изменяемого скрипта

3) Запустить применение командой

ansible-playbook -i /etc/ansible/hosts sendscript.yml
Или для локального файла хостов
ansible-playbook -i hosts1 sendscript.yml

