# flask-blog

A web app developed with [Flask](http://flask.pocoo.org/) framework. 

The main purpose is to introduce how to implement the essential elements in web application with Flask, including

- URL Building

- Authentication with Sessions

- Template & Template Inheritance

- Error Handling

- Integrating with *Bootstrap*

- Interaction with Database using SQLAlchemy

- Invoking static resources



## How to Run

- Step 1: Make sure you have Python

- Step 2: Install the requirements: `pip install -r requirements.txt`

- Step 3: Go to this app's directory and run `python run.py`

- Optional:
  To be able to send reset password link. You need to set environment variables for "EMAIL_USER" and "EMAIL_PASS" from **flaskblog/config.py** file, to the email and password you want to send link from, everything else will work nevertheless.


## Using Docker

- The repo has Dockerfile in it. Run this command in powershell from app's directory to build an image from Dockerfile:
  `docker build -t <image-name> .`
  Replace the image-name with the name you want to give to your image
  
- Now run this command in powershell to create a writable container layer over the image and the start it:
  `docker run -d -p 5000:5000 -t -i <image-name>`
  Replace the image-name with the name you've given to your image.
  
- Or you can just pull the image from my [Dockerhub](https://hub.docker.com/r/varunghost/flask-blog) with command `docker pull varunghost/flask-blog:firsttry` 
  Now use this image to create and start the docker container.
  
  In both cases you can go to https://localhost:5000 to access the flask-app.
  
- For more information refer to the [Docker docs](https://docs.docker.com/)



## Details about This Toy App

There are three tabs in this toy app

- **Home**: Home page of blog site.

- **About**: About Page.

- **Login**: Login page for existing user.

- **Register**: Register page.

- **New Post**: If logged in, this will allow user to post.

- **Account**: If logged in, will show account details and an option to change profile picture.

- **SideBar**: Consists of three collapsable cards.


A few accounts were set for testing, like ***obi-wan*** , ***vader***, etc. You can also delete or add accounts.
