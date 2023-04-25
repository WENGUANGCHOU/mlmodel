FROM python:3.10

WORKDIR /app

COPY app.py .
COPY requirements.txt .
COPY model.pkl .


RUN pip install -r requirements.txt

EXPOSE 5050

ENTRYPOINT ["python"]

CMD ["app.py"]
