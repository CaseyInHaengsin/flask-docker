FROM python:3.7.0-alpine

WORKDIR /usr/app

COPY requirements.txt requirements.txt
RUN python -m venv .
RUN source bin/activate

RUN pip install -r requirements.txt

COPY ./ ./

ENV FLASK_APP "first_app.py"

CMD flask run --host=0.0.0.0