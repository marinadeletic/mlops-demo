
FROM gcr.io/mmlops3/mlops-dev:latest
RUN pip install -U fire cloudml-hypertune
WORKDIR /app
COPY train.py .

ENTRYPOINT ["python", "train.py"]