
FROM node:18-slim

WORKDIR /app

COPY . .

# در صورتی که وابستگی خاصی دارد نصب می‌شود
RUN if [ -f package.json ]; then npm install; fi

# اجرای فایل اصلی پروژه
CMD ["node", "Source.js"]
