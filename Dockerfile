from python:3.8-alpine

RUN pip install --no-cache-dir --upgrade pip 

WORKDIR /app

COPY . /app

RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"]


