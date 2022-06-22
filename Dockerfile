FROM python:3
RUN apt-get update && apt-get upgrade -y && apt-get autoclean
COPY . /django_ci/
WORKDIR /django_ci

RUN pip install --upgrade pip
RUN pip install django
ENTRYPOINT [ "python", "manage.py" ]
CMD [ "runserver", "0.0.0.0:8000" ]
