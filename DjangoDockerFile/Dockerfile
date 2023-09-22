FROM python:3.9

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ../requirements.txt /usr/src/app
RUN pip install -r requirements.txt

# copy project
COPY ../ /usr/src/app

EXPOSE 80

RUN chmod +x /usr/src/app/django-docker-entrypoint.sh
ENTRYPOINT ["/usr/src/app/docker-entrypoint.sh"]
