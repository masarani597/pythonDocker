FROM python:3.8

WORKDIR /pythonDocker

RUN pip install pipenv

COPY Pipfile .

COPY Pipfile.lock .

RUN pipenv install --system --deploy

COPY main.py .

CMD [ "python", "./main.py" ]