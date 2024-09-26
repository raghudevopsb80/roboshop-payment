FROM        docker.io/redhat/ubi9
RUN         dnf install python3-pip gcc python3-devel -y
RUN         mkdir /app
WORKDIR     /app
COPY        payment.ini payment.py rabbitmq.py requirements.txt /app/
RUN         pip3 install -r requirements.txt
