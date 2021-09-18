#!/bin/bash
echo -e " `date`  СДКА ЗАПУЩЕН" >> /var/www/html/logs/main.log
DIALOG=${DIALOG=dialog}
dialog --colors --infobox "\Z4Загрузка"  3 12  ; sleep 1

$DIALOG --title "СДКА" --clear \
        --yesno "Запустить инициализацию датчиков и произвести диагностику автомобиля?" 10 40

case $? in
    0)
          echo -e " `date`  Пользователь выбрал запуск инициализации" >> /var/www/html/logs/main.log
       ./init.sh
        echo "Выбрано 'Да'.";;
        
    1)
        echo -e " `date`  Пользователь выбрал запуск отмену инициализации" >> /var/www/html/logs/main.log
        ./start.sh
        echo "Выбрано 'Нет'.";;
        
    255)
        echo "Нажата клавиша ESC.";;
esac

