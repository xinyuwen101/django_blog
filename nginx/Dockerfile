FROM nginx

RUN rm /etc/nginx/conf.d/default.conf \
&& mkdir -p /usr/share/nginx/html/static

ADD ./nginx.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]