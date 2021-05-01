FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip
RUN pip3 install --no-cache rasa==2.5.1 
ADD . /rasaApp/
RUN chmod +x /rasaApp/start_app.sh
RUN cd /rasaApp

ENTRYPOINT []
CMD /rasaApp/start_app.sh
