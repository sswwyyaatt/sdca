for ((gear=1; gear < 7; gear++))
do
#echo $gear
sleep 0.3
sed -i "s/^[0-9]*/$gear/" "/var/www/html/main/vars/gear.txt"


done
sed -i "s/^[0-9]*/0/" "/var/www/html/main/vars/gear.txt"
echo -e " `date`  Тест переключения пройден" >> /var/www/html/logs/main.log