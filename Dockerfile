FROM python:3.9-alpine
WORKDIR /app
COPY . /app/

#RUN pip install --no-cache-dir --upgrade pip &&\
#    pip install --no-cache-dir  --trusted-host pypi.python.org -r requirements.txt

RUN  pip install -r requirements.txt 

EXPOSE 8080
ENTRYPOINT ["python"]

CMD ["app.py"]

