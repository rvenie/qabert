# Используем официальный образ Python
FROM python:3.11

# Установка рабочей директории в контейнере
WORKDIR /app

# Копирование файла с зависимостями в рабочую директорию
COPY requirements.txt .

# Установите Jupyter Notebook
RUN pip install notebook

# Установка зависимостей
RUN pip install --no-cache-dir -r requirements.txt

# Определите порт, который будет использоваться
EXPOSE 8888

# Запуск Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]