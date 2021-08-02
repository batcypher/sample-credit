FROM tiangolo/uwsgi-nginx-flask:python3.7
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY  . /app
RUN mv /app/creditrisk_poc/uwsgi.ini /app/uwsgi.ini
ENV MESSAGE "CREDIT RISK TEST"