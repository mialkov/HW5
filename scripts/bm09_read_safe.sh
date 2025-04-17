#!/bin/bash

	if [[ -f $1 ]]; then cat "$1"; else echo "Помилка: файл не знайдено" >&2; fi
