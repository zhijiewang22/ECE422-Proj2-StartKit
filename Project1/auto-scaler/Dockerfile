FROM python:3.8-alpine
WORKDIR /code
ADD . /code
RUN pip install -r requirements.txt
RUN chmod +x ./scale.sh
CMD ["python", "scaler.py"]
