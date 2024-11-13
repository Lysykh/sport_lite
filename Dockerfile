FROM python:3.11-slim  
# мы скачиваем базовый контейнер (img) 
WORKDIR /app
# создаем папку с названием app
COPY ./reqirements.txt ./app/reqirements.txt
RUN pip install --no-cache-dir --upgrade -r ./app/reqirements.txt
COPY . ./app

# эта команда позволяет скопировать в app все что лежит в моей папкке (обратить внимание на . .). Посмотреть синтаксис команд в тех материалах которые скинул Дима
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
# CMD - это команда для докера которая выполняет консольную команду
# uvicorn - это веб сервер который мы запускаем. Мы этот Ювикорт в прошлый раз скачали и он теперь у нас есть. 
# "app.main:app" - это путь до ИНСТАНЦ приложения
# Это обьект приложения
# "--host" - это флаг с помощью которого мы определяем ХОСТ - это часть консольной команды  (ПОЧИТАТЬ ПРО КОНСОЛЬНЫЕ КОМАНДЫ при чем к докеру конкретно)
# "0.0.0.0" - задаем порт. В принципе можно было бы выбрать любой. Не стоит выбирать 127 порт - localhost. 
# "--port" - тоже по собственному желанию но еще и потому что по умолчанию браузер открывает 80/
# выполняем любую консольную команду просто проверить. 


