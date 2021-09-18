#!/bin/bash
#echo Запуск полного теста...
#echo Запуск теста скорости
sed -i "s/^[0-9][0-9][0-9]*/160/" "/var/www/html/bin/vars/max.txt"
sed -i "s/^[0-9][0-9][0-9]*/001/" "/var/www/html/bin/vars/speed.txt"
sed -i "s/^[0-9].[0-9]*/0.1/" "/var/www/html/bin/vars/tax.txt"
sed -i "s/^[0-9]*/1/" "/var/www/html/bin/vars/gear.txt"
/var/www/html/bin/tests/speed_test.sh
/var/www/html/bin/tests/speed_test.sh
/var/www/html/bin/tests/speed_test.sh
#echo Запуск теста передачи
/var/www/html/bin/tests/gear_test.sh
/var/www/html/bin/tests/gear_test.sh
/var/www/html/bin/tests/gear_test.sh
#echo Запуск теста тахометра
/var/www/html/bin/tests/tax_test.sh
/var/www/html/bin/tests/tax_test.sh
/var/www/html/bin/tests/tax_test.sh
#echo Запуск теста максимальной скорости
/var/www/html/bin/tests/max_test.sh
/var/www/html/bin/tests/max_test.sh
/var/www/html/bin/tests/max_test.sh

sed -i "s/^[0-9][0-9][0-9]*/160/" "/var/www/html/bin/vars/max.txt"
sed -i "s/^[0-9][0-9][0-9]*/001/" "/var/www/html/bin/vars/speed.txt"
sed -i "s/^[0-9].[0-9]*/0.1/" "/var/www/html/bin/vars/tax.txt"
sed -i "s/^[0-9]*/1/" "/var/www/html/bin/vars/gear.txt"
#echo Тесты пройдены