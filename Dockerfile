FROM python:3.6
RUN mkdir /usr/src/app/
COPY . /usr/src/app/
WORKDIR /usr/src/app/
EXPOSE 5000
RUN pip install -r requirements.txt && cd creditrisk_poc
CMD ["python", "main.py"]