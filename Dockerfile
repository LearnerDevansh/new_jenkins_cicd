# Use a stable Python base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /flaskapp

# Copy the application source code and requirements file
COPY app.py requirements.txt /flaskapp/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 (Flask default)
EXPOSE 5000

# Define the startup command
CMD ["python", "app.py"]
