FROM python:3.7.3-stretch
WORKDIR /app
COPY . /app/

RUN pip install --upgrade pip &&\
    pip install --no-cache-dir -r requirements.txt 


EXPOSE 8080
ENTRYPOINT ["python"]

CMD ["app.py"]

