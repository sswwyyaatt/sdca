for ((tax=1; tax < 80; tax++))
do
#echo $tax
sleep 0.03
sed -i "s/^[0-9].[0-9]*/0.$tax/" "/var/www/html/main/vars/tax.txt"
done
sed -i "s/^[0-9].[0-9]*/0.00/" "/var/www/html/main/vars/tax.txt"
echo -e " `date`  Тест тахометра пройден" >> /var/www/html/logs/main.log