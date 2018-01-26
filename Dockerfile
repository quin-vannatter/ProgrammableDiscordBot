FROM node

RUN npm install -g forever \
    nodemon

COPY src/start.sh /
RUN chmod +x /start.sh

CMD ["/bin/bash", "-c", "/start.sh"]