FROM python:3.11-rc-bullseye
LABEL author='o.volmar@gmail.com'
WORKDIR /app
COPY . /app/

RUN pip install --no-cache-dir --upgrade pip &&\
    pip install -r requirements.txt 
EXPOSE 80

CMD ["python", "app.py"]

