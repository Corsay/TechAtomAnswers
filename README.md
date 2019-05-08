# TechAtomAnswers - Чат бот (project 42)
## Описание проекта
Чат-бот болталка через Telegram, реализуемая в рамках курса "Прикладной Python" (Техноатом 2019-1).

В проекте осуществляется:
+ получение сообщения (вопроса) от пользователя через бота в Telegram (или через HTTP запрос);
+ определение категории вопроса (программирование | болталка);
+ выдача наиболее подходящего ответа на вопрос из соответствующей категории;

## Команда
+ Захаров Денис (https://github.com/interned22) (WEB тред)
    + ToDo: что сделано
+ Курылев Игорь (https://github.com/IgorKurylev) (ML тред)
    + ToDo: что сделано
+ Григорян Эмиль (https://github.com/EmilGrigoryan) (ML тред)
    + ToDo: что сделано
+ Цибисов Дмитрий (https://github.com/Corsay) (ML тред)
    + Репозиторий, Readme, структура проекта
    + docker + nginx, flask get\post
    + ToDo: что сделано

###### Менторы
+ Михаил Баранов (https://github.com/Kinetikm)
+ Зарина Сайфуллина (https://github.com/elBroom)

## Структура проекта
+ web - каталог для сервиса отвечающего через API Telegram
+ data - каталог для парсера данных с внешних истоничков и самих данных
+ ml - каталог для моделей и остальных необходимых материалов
+ корневой каталог - докеризация(Dockerfile), конфиги (nginx), настройки окружения (pipenv)

## Для использования
0. Настроить окружение (venv | pipenv)

        Python версии 3.6
        все требуемые модули и их версии находятся в requirements.txt

1. Создать и настроить Telegram бота (@BotFather)
2. В проекте добавить информацию о токене бота
    + ToDo: ГДЕ УКАЗЫВАТЬ ТОКЕН
3. Запустить web-сервис на машине

        cd TechAtomAnswers
        docker-compose up

4. Поболтать с ботом через Telegram (или поюзать HTTP запрос) :)
    + /start
    + GET "http://host:port/question?text=Hello"
    + POST "http://host:port/question" (data={text: "Hello"})

## Информация о курсе
Курс: https://atom.mail.ru/curriculum/program/discipline/751/

Лекции и материалы: https://drive.google.com/open?id=1AUqbc44ZYrRgkTdoR4QehbeDfiiy-KO-

Презентация проекта: ToDo (линк на презентацию (гуглодок | github))
