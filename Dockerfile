FROM ubuntu:20.04

RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev

COPY ./requirements.txt /flask-blog/requirements.txt

WORKDIR /flask-blog

RUN chmod 777 /flask-blog/requirements.txt
RUN pip3 install -r requirements.txt

COPY . /flask-blog

EXPOSE 5000
ENV FLASK_APP=run.py

#ENTRYPOINT ["python3"]
ENTRYPOINT [ "flask" ]
#CMD ["run.py"]
CMD [ "run", "--host", "0.0.0.0" ]