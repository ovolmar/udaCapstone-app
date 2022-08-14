FROM python:3.9-alpine
WORKDIR /app
COPY . /app/

Run pip install -r requirements.txt 

ENTRYPOINT ["python"]

CMD ["app.py"]

