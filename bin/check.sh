#!/bin/bash
echo -e " `date`  Начало теста приборов" >> /var/www/html/logs/bin.log
echo percentage | dialog --gauge "text" height width percent
/var/www/html/bin/tests/tax_test.sh | echo "25" | dialog --gauge "ПРОВЕРКА ПРИБОРОВ #1" 10 70 0
/var/www/html/bin/tests/gear_test.sh | echo "50" | dialog --gauge "ПРОВЕРКА ПРИБОРОВ #2" 10 70 0
/var/www/html/bin/tests/max_test.sh | echo "75" | dialog --gauge "ПРОВЕРКА ПРИБОРОВ #3" 10 70 0
/var/www/html/bin/tests/speed_test.sh | echo "100" | dialog --gauge "ПРОВЕРКА ПРИБОРОВ #4" 10 70 0
sleep 2
clear
echo -e " `date`  Тесты окончены успешно" >> /var/www/html/logs/bin.log
clear
sleep 0.7
clear
                                                               
    echo -e " `date`  Check engine RED" >> /var/www/html/logs/bin.log                                                                                                                                                  
    echo -e "$(tput setaf 1)                                                                                                                                            
 #####                                                                      
#     # #    # ######  ####  #    #    ###### #    #  ####  # #    # ###### 
#       #    # #      #    # #   #     #      ##   # #    # # ##   # #      
#       ###### #####  #      ####      #####  # #  # #      # # #  # #####  
#       #    # #      #      #  #      #      #  # # #  ### # #  # # #      
#     # #    # #      #    # #   #     #      #   ## #    # # #   ## #      
 #####  #    # ######  ####  #    #    ###### #    #  ####  # #    # ###### 
                                                                            ";                                                                                                                               
sleep 3
clear
echo -e " `date`  Check engine GREEN" >> /var/www/html/logs/bin.log
echo -e "$(tput setaf 2)                                                                                                                                            
 #####                                                                      
#     # #    # ######  ####  #    #    ###### #    #  ####  # #    # ###### 
#       #    # #      #    # #   #     #      ##   # #    # # ##   # #      
#       ###### #####  #      ####      #####  # #  # #      # # #  # #####  
#       #    # #      #      #  #      #      #  # # #  ### # #  # # #      
#     # #    # #      #    # #   #     #      #   ## #    # # #   ## #      
 #####  #    # ######  ####  #    #    ###### #    #  ####  # #    # ###### 
                                                                            ";   

sleep 30
echo -e " `date`  Программа завершена!" >> /var/www/html/logs/bin.log
echo -e "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++" >> /var/www/html/logs/bin.log
clear
