#берем образ
FROM python:3.12-alpine

#задаем рабочую директорию
WORKDIR /opt/webdoc/

#копируем файлы приложения в контейнер
COPY app/backend/* /opt/webdoc/

#устанавливаем заисимости для python
RUN pip install --no-cache-dir -r dependencies.txt

#запускаем приложение
CMD python ./main.py