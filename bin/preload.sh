#!/bin/bash
counter=0
(
# set infinite while loop
while :
do

cat <<EOF
XXX
$counter
Загрузка систем контроля ( $counter%):
XXX
EOF
# increase counter by 10
(( counter+=10 ))
[ $counter -eq 100 ] && break
# delay it a specified amount of time i.e 1 sec
sleep 0.003
done
) |
dialog --title "ИНИЦИАЛИЗАЦИЯ" --gauge "ОЖИДАЙТЕ" 7 70 0
echo -e " `date`  Предзагрузка прошла корректно" >> /var/www/html/logs/bin.log
./check.sh