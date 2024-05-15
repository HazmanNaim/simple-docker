# Pull the Base Image from the Docker registry
FROM python:3

# Set our working directory
WORKDIR /app

# Copy the requirements.txt into our current working directory
COPY requirements.txt /app

# Run the requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy everything in our directory into our working directory
COPY . /app

# Expose our container port to the outside worl
EXPOSE 80

# Run the command when launching
CMD ["python", "./main.py"]



