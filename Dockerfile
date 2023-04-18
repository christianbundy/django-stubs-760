FROM python:3.11
RUN pip install django django-stubs[compatible-mypy] mypy
COPY . .
CMD ./repro.sh

