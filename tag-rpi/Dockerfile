FROM aarch64/alpine:edge  

RUN apk --update add nodejs \
    git

RUN npm install -g forever \
    nodemon

COPY ../src/start.sh /
RUN chmod +x /start.sh

CMD ["/bin/bash", "-c", "/start.sh"]