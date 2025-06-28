#from ubuntu as base image we take the latest image
#FROM ubuntu:latest

#update the packages and install python3 with pip as package installer
#RUN apt-get update && apt-get install -y python3 python3-pip

#Install Flask
#RUN pip3 install flask --break-system-packages flask

#copy the flask app
#COPY app.py /app.p#y

#run the flask app
#CMD ["python3","/app.py"]

FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]

