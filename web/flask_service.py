#!/usr/bin/env python
# coding: utf-8

from flask import Flask, request

app = Flask(__name__)


@app.route("/question", methods=['GET', 'POST'])
def question():
    # получаем содержимое вопроса
    data = request.json
    if not data:
        data = request.args
    if not data:
        data = request.form

    # Отфутболиваем тех кто ничего не спросил
    if not data or not data.get('text'):
        return "У меня для вас плохие новости, вы ничего не спросили :)"

    # ToDo: Доделать (тут будет вызываться уже обученная модель
    # ToDo: и на основе её решения тупо возвращаться ответ)
    return data['text']


if __name__ == "__main__":
    app.run(host="0.0.0.0", port="8070")
