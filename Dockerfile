FROM python:3.12-slim 

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .
# Flask es un microframework de Python que se utiliza para desarrollar aplicaciones web. Por defecto, Flask se ejecuta en el puerto 5000, por lo que es necesario exponer este puerto en el contenedor Docker para que la aplicación sea accesible desde fuera del contenedor.

# EXclusivo de Flask exponer el puerto 5000
EXPOSE 5000 
CMD ["python", "app.py"]