# Use an official Python runtime image
# Since I tested on an M1 (ARM) Mac, there are issues wth CPU architectures
# I am explicitly defining the AMD64 here
FROM --platform=linux/amd64 python:3-slim

# Set the working directory in the container to /web_app
WORKDIR /web_app

# Copy the current directory contents into the container at /web_app
COPY . /web_app

# Install Python dependencies
RUN pip install -r requirements.txt

# Define the environment variable for Flask
ENV FLASK_APP=app/app.py

# Run the Flask app 
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]