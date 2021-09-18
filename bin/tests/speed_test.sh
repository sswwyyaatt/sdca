
for ((speed=1; speed < 100; speed++))
do
#echo $speed
sleep 0.01
sed -i "s/^[0-9][0-9][0-9]*/0$speed/" "/var/www/html/main/vars/speed.txt"

done
sed -i "s/^[0-9][0-9][0-9]*/000/" "/var/www/html/main/vars/speed.txt"
echo -e " `date`  Тест спидометра пройден" >> /var/www/html/logs/main.log