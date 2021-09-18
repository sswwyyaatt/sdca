for ((max=160; max < 200; max++))
do

sleep 0.12
sed -i "s/^[0-9][0-9][0-9]*/$max/" "/var/www/html/bin/vars/max.txt"


done
sed -i "s/^[0-9][0-9][0-9]*/160/" "/var/www/html/bin/vars/max.txt"
echo -e " `date`  Тест переключения максимальной скорости пройден" >> /var/www/html/logs/bin.log