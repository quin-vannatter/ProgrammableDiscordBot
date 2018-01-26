FROM node

RUN apt-get install -y git

RUN npm install -g forever \
    nodemon

EXPOSE 8888

COPY src/start.sh /
RUN chmod +x /start.sh

CMD ["/bin/bash", "-c", "/start.sh"]