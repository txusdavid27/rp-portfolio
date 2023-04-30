FROM python:3.10.6
WORKDIR /app

# Copia los archivos necesarios para instalar las dependencias
COPY requirements.txt .

# Instala las dependencias
RUN pip install -r requirements.txt

# Copia los archivos de la aplicación al contenedor
COPY ./ ./

# Expone el puerto 8001 para que pueda ser accedido desde el host
EXPOSE 5000


# Inicia el servidor de desarrollo de Django
CMD ["python3", "manage.py", "runserver", "0.0.0.0:5000"]
