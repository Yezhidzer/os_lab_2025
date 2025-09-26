#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Ошибка: нет аргументов. Передайте целые числа в качестве аргументов."
    exit 1
fi

count=$#


sum=0
for arg in "$@"; do
    
    if ! [[ "$arg" =~ ^-?[0-9]+$ ]]; then
        echo "Ошибка: '$arg' не является целым числом."
        exit 1
    fi
    sum=$((sum + arg))
done

average=$((sum / count))

echo "Количество аргументов: $count"
echo "Сумма аргументов: $sum"
echo "Среднее арифметическое (целое): $average"
