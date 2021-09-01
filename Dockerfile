FROM nginx:1.15-alpine

COPY app.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /usr/share/nginx/

ENTRYPOINT ["/usr/share/nginx/entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
