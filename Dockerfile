FROM centos:7

MAINTAINER Project42Team

# установка нужных пакетов
RUN yum -y update; yum clean all
RUN yum -y install epel-release

# Python3.6
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm
RUN yum -y install python36u python36u-devel python36u-pip
RUN yum clean all
RUN pip3.6 install pipenv

ENV SRC_PROJECT_PATH /src
WORKDIR $SRC_PROJECT_PATH

# закачка зависимостей в виртуальное окружение
ADD Pipfile $SRC_PROJECT_PATH
ADD Pipfile.lock $SRC_PROJECT_PATH
ADD requirements.txt $SRC_PROJECT_PATH

ENV LANG=en_US.utf8
RUN pipenv install -r requirements.txt --python=python3.6
RUN yum -y install which

# перенос кода в контейнер
ADD . $SRC_PROJECT_PATH

# запуск сервиса
EXPOSE 8070

ENV FLASK_ENV=development
ENV FLASK_APP=$SRC_PROJECT_PATH/web/flask_service.py
CMD ["pipenv", "run", "flask", "run", "--host=0.0.0.0", "--port=8070"]
