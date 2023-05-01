# Official Python runtime as base image
FROM python:3.9-slim-buster

# Set working directory
WORKDIR /app

# Copy all files current directory to /app
COPY . /app

# Install dependencies
RUN pip install

# Make port 80 available outside container
EXPOSE 80

# Run app.py when launching container
CMD ["python", "app.py"]
