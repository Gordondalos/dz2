#!/bin/bash

mkdir first second 
echo 'print(1)' > first/first.py
echo 'print(2)' > second/second.py
cd first
ls
python first.py
cd ../second
ls
python second.py
mv second.py ../first/
echo "Содержимое папки first"
cd ../first
ls
cd ..
mv first first_second
echo "Содержимое папки first_second"
ls
echo "Удаляю first_second"
rm -r first_second

echo -n "Хотите удалить second? (y/n) "

read item
case "$item" in
    y|Y) echo "Ввели «y», продолжаем..."
        ;;
    n|N) echo "Ввели «n», завершаем..."
        exit 0
        ;;
    *) echo "Ничего не ввели. Выполняем действие по умолчанию..."
        ;;
esac


rm -r second 
echo "Все успешно удалено!"

$SHELL
