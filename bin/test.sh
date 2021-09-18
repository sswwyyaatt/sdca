echo percentage | dialog --gauge "text" height width percent
/var/www/html/main/tests/tax_test.sh | echo 25 | dialog --gauge "ПРОВЕРКА ПРИБОРОВ #1" 10 70 0
/var/www/html/main/tests/gear_test.sh | echo 50 | dialog --gauge "ПРОВЕРКА ПРИБОРОВ #2" 10 70 0
/var/www/html/main/tests/max_test.sh | echo 75 | dialog --gauge "ПРОВЕРКА ПРИБОРОВ #3" 10 70 0
/var/www/html/main/tests/speed_test.sh | echo 100 | dialog --gauge "ПРОВЕРКА ПРИБОРОВ #4" 10 70 0
sleep 2
clear