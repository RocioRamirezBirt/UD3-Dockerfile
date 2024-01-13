# Utiliza la imagen oficial de httpd, versión 2.4
FROM httpd:2.4

# Damos información sobre la imagen que estamos creando
LABEL \
    version="1.0" \
    description="Apache2 + nano + index.html" \
    creationDate="01-12-2023" \
    maintainer="Deaw <deaw@deaw.eus>"

# Actualizamos e instalamos nano
RUN apt-get update && apt-get install -y nano

# Copiamos el index.html al directorio por defecto del servidor web
COPY index.html /usr/local/apache2/htdocs/

#  agregar la carpeta dockerfile de manera automatica 
COPY html /usr/local/apache2/htdocs/proyecto
# Exponemos el puerto 80
EXPOSE 80
