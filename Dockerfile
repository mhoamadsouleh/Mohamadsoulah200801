# استخدام صورة PHP رسمية مع Apache
FROM php:8.2-apache

# نسخ ملفات المشروع إلى المسار الصحيح
COPY . /var/www/html/

# تعيين الأذونات المناسبة
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

# تفعيل mod_rewrite لـ Apache (مهم للروابط)
RUN a2enmod rewrite

# تثبيت أي إضافات PHP إضافية إذا needed
# RUN docker-php-ext-install mysqli pdo pdo_mysql
