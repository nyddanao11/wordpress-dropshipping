FROM wordpress:latest

# Increase PHP limits for large plugin uploads
RUN echo "upload_max_filesize = 256M" > /usr/local/etc/php/conf.d/uploads.ini && \
    echo "post_max_size = 256M" >> /usr/local/etc/php/conf.d/uploads.ini && \
    echo "memory_limit = 512M" >> /usr/local/etc/php/conf.d/uploads.ini && \
    echo "max_execution_time = 300" >> /usr/local/etc/php/conf.d/uploads.ini