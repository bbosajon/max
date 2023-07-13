# # The first instruction is what image we want to base our container on
# # We Use an official Python runtime as a parent image
# FROM python:3.11.3

# # The enviroment variable ensures that the python output is set straight
# # to the terminal with out buffering it first
# ENV PYTHONUNBUFFERED 1

# # create root directory for our project in the container
# RUN mkdir /max

# # Set the working directory to /max
# WORKDIR /max

# # Copy the current directory contents into the container at /max
# ADD . /max/

# COPY requirements.txt requirements.txt
# # Install any needed packages specified in requirements.txt
# RUN pip install -r requirements.txt

# Use an official Python runtime as the base image
FROM python:3.11.3

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt ./

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django project code to the container
COPY . .

# Set the environment variables for Postgres and Azure Blob Storage
ENV POSTGRES_HOST=maxstorage.postgres.database.azure.com
ENV POSTGRES_PORT=5432
ENV POSTGRES_DB=bbosa
ENV POSTGRES_USER=bbosa
ENV POSTGRES_PASSWORD=Neonah@100
ENV AZURE_STORAGE_CONNECTION_STRING=DefaultEndpointsProtocol=https;AccountName=maxmedia;AccountKey=qIcKgw0mM5/ghHe4Zg9eDhttwpgVQVjTkuUr1NodHvQheaSRpxGbeHSAgQ4/5vWjXpC2B44CemR/+ASt8TTqYw==;EndpointSuffix=core.windows.net

# Expose the port on which the Django application will run
EXPOSE 8000

# Run the Django application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
