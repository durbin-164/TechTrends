FROM python:3.8-slim-buster
LABEL maintainer="Md. Masud Rana"

RUN mkdir app
WORKDIR /app

COPY /techtrends/requirements.txt .

RUN pip install -r requirements.txt

COPY /techtrends .

RUN python3 init_db.py

EXPOSE 3111
CMD [ "python3", "app.py"]