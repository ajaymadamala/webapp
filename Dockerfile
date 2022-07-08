FROM ubuntu:20.04

RUN apt-get update && apt-get install -y python python3-pip

RUN pip install flask 

RUN pip install --upgrade pip
RUN chown -Rv admin:admin /opt/
COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run 
#--host=0.0.0.0 --port=8080
