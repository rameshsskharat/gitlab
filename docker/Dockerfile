FROM python:3.10-slim
WORKDIR /app
COPY app/requirements.txt .
RUN pip install -r requirements.txt
COPY app/ .
EXPOSE 8080
CMD ["gunicorn","-b","0.0.0.0:8080","app:app"]
