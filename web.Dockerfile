#volume
FROM nginx:1.27-alpine

# copy config to container
COPY nginx.conf /etc/nginx/nginx.conf

# create directory to store frontend files assign ownership
RUN mkdir -p /data/www 
RUN chown -R nginx:nginx /data/www


# copying files a
COPY app/frontend/ /data/www

# runs nginx when container starts off
CMD ["nginx", "-g", "daemon off;"]


