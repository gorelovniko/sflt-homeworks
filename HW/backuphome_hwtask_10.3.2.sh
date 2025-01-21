#!/bin/bash

SOURCE="$HOME/"
DESTINATION="/tmp/backup/"

# Создание папки даже, если её не существует
mkdir -p "$DESTINATION"

# Выполнение резервирования
rsync -av --delete "$SOURCE" "$DESTINATION" >> /var/log/backup.log 2>&1

# Запись результата в лог
if [ $? -eq 0 ]; then
    echo "$(date): Backup successful" >> /var/log/backup.log
else
    echo "$(date): Backup failed" >> /var/log/backup.log
fi
