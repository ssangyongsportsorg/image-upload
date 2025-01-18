# 使用官方 Chevereto 鏡像
FROM chevereto/chevereto:latest

# 環境變數設定
ENV CHEVERETO_DB_HOST=mysql-747f9bf-ssangyongsports1-c08e.c.aivencloud.com \
    CHEVERETO_DB_USER=avnadmin \
    CHEVERETO_DB_PASS=AVNS_YHtcVdP4Zk7FT4gTm76 \
    CHEVERETO_DB_PORT=13391 \
    CHEVERETO_DB_NAME=defaultdb \
    CHEVERETO_MAX_POST_SIZE=2G \
    CHEVERETO_MAX_UPLOAD_SIZE=2G

# 暴露端口
EXPOSE 80

# 設定工作目錄
WORKDIR /var/www/html

# 建立掛載點
VOLUME /var/www/html/images

# 啟動容器默認命令
CMD ["apache2-foreground"]
