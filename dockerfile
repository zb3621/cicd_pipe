#pick the alpine base image
FROM alpine:3.5 
#install python and pip
RUN apk add --update python py-pip

COPY requirements.txt /src/requirements.txt
#install pip
RUN pip install -r /src/requirements.txt
#install web app
COPY app.py /src

COPY buzz /src/buzz
#launch web-app whenever container is launched
CMD python /src/app.py