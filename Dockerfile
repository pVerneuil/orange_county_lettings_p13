FROM python:3.10-alpine

ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
ENTRYPOINT ["python", "manage.py"]