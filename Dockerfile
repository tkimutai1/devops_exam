FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 6714/tcp
EXPOSE 6714/udp
