#!/bin/bash

	read -p "Введи ім'я файлу: " f [[ -f $f ]] && echo "Файл існує"
