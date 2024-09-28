#######  Development #########
FROM python:3.11-slim

RUN mkdir /app
WORKDIR /app
RUN pip3 install pipenv
COPY manage.py .
COPY src ./src

RUN pipenv install
# Grpc Port
EXPOSE 8100
# Prometheus Port
EXPOSE 8200
# use this command to debug
#ENTRYPOINT ["tail", "-f", "/dev/null"]
