FROM php:8.0

# आवश्यक पॅकेजेस इंस्टॉल करा
RUN apt-get update -y && apt-get install -y \
    unzip \
    git \
    curl

# Composer इंस्टॉल करा
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# वर्किंग डायरेक्टरी सेट करा
WORKDIR /var/www/html

# प्रोजेक्ट फाइल्स कॉपी करा
COPY . .

# PHP डिपेंडन्सी इंस्टॉल करा
RUN composer install

# पोर्ट एक्सपोज करा आणि सर्व्हर सुरू करा
EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80", "-t", "public"]
