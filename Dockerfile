FROM python:3.9

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /usr/src/app
RUN pip install -r requirements.txt

# copy project
COPY . /usr/src/app

EXPOSE 80

CMD ["python3",
"manage.py",
"makemigrations",
"&&",
"python3",
"manage.py",
"migrate",
"&&",
"python3",
"manage.py",
"runserver",
"0.0.0.0:80"
]
