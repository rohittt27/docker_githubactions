FROM python:3.8-slim

ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN apt-get update 

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
