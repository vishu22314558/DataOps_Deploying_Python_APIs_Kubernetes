#A Dockerfile is a text document that contains all the commands a user could call on 
#   the command line to assemble an image. 
# tells Docker to use a given image with its tag as the base image
FROM python:3.8.5

# is our work directory that contains the app
WORKDIR /src

RUN pip install flask

#copies files from the local file-system to the image directory.
# use gitignore for complext project to not add keys to your build
COPY app.py .

#is the HTTP port our application is going to be exposed as.
EXPOSE 5000

#How to start the application in the container 
# describes how to start the application inside of the container.
CMD ["flask", "run", "--host", "0.0.0.0"]
