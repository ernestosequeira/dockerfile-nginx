# dockerfile-nginx

# Crear imagen a partir del Dockerfile
docker build -t opendevweb01 /home/esequeira/docker-file-opendevweb/

# Ejecutar contenedor
docker run -d -p 90:80 opendevweb01
