#!/usr/bin/env python
# coding: utf-8

from flask import Flask

app = Flask(__name__)


@app.route("/question", methods=['GET', 'POST'])
def question():
    # ToDo: Доделать (тут будет вызываться уже обученная модель
    # ToDo: и на основе её решения тупо возвращаться ответ)
    return "У меня для вас плохие новости :)"


if __name__ == "__main__":
    # ToDo: Можно докеризовать + nginx
    app.run(host="0.0.0.0", port="8070")
