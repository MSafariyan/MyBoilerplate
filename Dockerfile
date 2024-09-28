#######  Development #########
FROM python:3.11-slim

RUN mkdir /app
WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r ./requirements.txt
COPY manage.py .
COPY src ./src
# Grpc Port
EXPOSE 8100
# Prometheus Port
EXPOSE 8200
# use this command to debug
#ENTRYPOINT ["tail", "-f", "/dev/null"]
