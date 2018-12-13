FROM fengmu456/nginx-node

WORKDIR /app-root
COPY ./server /app-root
COPY ./web/build/ /usr/share/nginx/html/
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./startup.sh /app-root/

CMD [ "/app-root/startup.sh" ]
