FROM nginx:alpine

# HTMLファイルを Nginx の配信フォルダに配置
COPY index.html /usr/share/nginx/html/index.html
COPY viewer.html /usr/share/nginx/html/viewer.html

# Cloud Run のデフォルトポート 8080 に変更
RUN sed -i 's/80/8080/g' /etc/nginx/conf.d/default.conf
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
