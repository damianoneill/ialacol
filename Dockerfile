# syntax=docker/dockerfile:1

FROM python:3.11
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["uvicorn", "main:app"]
