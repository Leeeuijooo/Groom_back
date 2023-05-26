FROM python:3.10.2

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt ./
RUN python3 -m pip install --upgrade pip setuptools
RUN pip install -r requirements.txt

COPY . ./
WORKDIR /code/groom
EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]