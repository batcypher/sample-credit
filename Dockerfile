FROM python:3.6
RUN mkdir /usr/src/app/
COPY . /usr/src/app/
EXPOSE 5000
RUN pip install -r requirements.txt
WORKDIR /usr/src/app/creditrisk_poc/
CMD ["python", "main.py"]