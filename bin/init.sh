#!/bin/bash
DIALOG=${DIALOG=dialog}

$DIALOG --title "СДКА" --clear \
       --colors --yesno  "Зажигание \Z1ВКЛЮЧЕНО \Z0двигатель \Z1ЗАГЛУШЕН !" 5 43

case $? in
    0)
       ./preload.sh
        echo "Выбрано 'Да1'.";;
    1)
        ./start.sh
        echo "Выбрано 'Нет1'.";;
    255)
        echo "Нажата клавиша ESC1.";;
esac

