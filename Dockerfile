# Utiliza la imagen base oficial de Python para Flask
FROM python:3.8

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requerimientos al contenedor
COPY requirements.txt requirements.txt

# Instala las dependencias de Python
RUN pip install -r requirements.txt

# Copia el código de la aplicación al contenedor
COPY . .

# Configura Flask para producción
ENV FLASK_ENV=production

# Expone el puerto en el que se ejecutará la aplicación Flask
EXPOSE 80

# Define el comando para ejecutar la aplicación Flask
CMD ["python", "app.py"]

