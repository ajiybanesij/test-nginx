FROM nginx:alpine
RUN rm /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html
EXPOSE 8080
RUN chmod 777 -R /usr/share/nginx/html
CMD ["nginx","-g","daemon off;"]