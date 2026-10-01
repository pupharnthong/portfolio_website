FROM nginx:alpine
# ลบไฟล์หน้า Default เดิมของ Nginx ออกทั้งหมด
RUN rm -rf /usr/share/nginx/html/*
# คัดลอกไฟล์ทั้งหมดในโปรเจกต์เข้าไปแทนที่
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
