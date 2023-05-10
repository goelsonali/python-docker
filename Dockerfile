# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

#Setting the working directory inside the image
WORKDIR /app

#Below command copies the requirements.txt file from local root path to the image /app path
COPY requirements.txt requirements.txt

#This command installs the relevant dependencies like - FLASK defined in the requirements.txt using pip
RUN pip3 install -r requirements.txt

#This will add the source code from current local root path to the image /app path
COPY . .

#Command to run when the image is executed inside a container

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]

