FROM arm64v8/alpine:3.5

RUN apk --update add nodejs
RUN apk add git

RUN npm install -g forever \
    nodemon

COPY ../src/start.sh /
RUN chmod +x /start.sh

CMD ["/bin/bash", "-c", "/start.sh"]