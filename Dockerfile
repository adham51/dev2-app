FROM python:3.13.3-slim

#create an app folder
WORKDIR /app 

# local is always on the left while container is on the right 
COPY ./src /app/src 

COPY ./pyproject.toml /app/pyproject.toml

RUN python -m pip install -e .

ENTRYPOINT [ "dev2il-devops-app" ]