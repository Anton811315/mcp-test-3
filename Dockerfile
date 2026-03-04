FROM python:3.12-alpine

WORKDIR /app

# Устанавливаем nmap
RUN apk add --no-cache nmap

# Устанавливаем Flask
RUN pip install --no-cache-dir flask

# Копируем серверный файл в контейнер
COPY server.py /app/server.py

# Устанавливаем команду запуска
CMD ["python", "/app/server.py"]