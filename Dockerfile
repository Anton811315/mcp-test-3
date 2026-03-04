# Используем официальный образ Python на базе Alpine
FROM python:3.12-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Устанавливаем необходимые утилиты: nmap
RUN apk add --no-cache nmap

# Устанавливаем Python-пакеты
RUN pip install --no-cache-dir flask

# Копируем серверный файл в контейнер
COPY server.py /app/server.py

# Устанавливаем команду запуска
CMD ["python", "/app/server.py"]