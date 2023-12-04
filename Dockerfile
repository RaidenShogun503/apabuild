# Sử dụng image cơ bản
FROM ubuntu:latest

# Cài đặt apache2
RUN apt-get update && apt-get install -y apache2

# Cài đặt wget
RUN apt-get install -y wget

# Tải file sử dụng wget
RUN wget [URL của file cần tải] -P /var/www/html

# Mở cổng 80
EXPOSE 80

# Chạy apache2 trên nền
CMD ["apache2ctl", "-D", "FOREGROUND"]
