# Use an official Python runtime as the base image
FROM python:3.10-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Specify the command to run when the container starts
CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
