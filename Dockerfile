FROM node

RUN apt-get install -y git

RUN npm install -g forever \
    nodemon

COPY src/update-start.sh /
COPY src/start.sh /

RUN chmod +x /update-start.sh && \
    chmod +x /start.sh

CMD ["/bin/bash", "-c", "/update-start.sh"]