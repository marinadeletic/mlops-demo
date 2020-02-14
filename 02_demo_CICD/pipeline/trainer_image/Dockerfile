
FROM gcr.io/demokfp/mlops-dev:TF115-TFX015-KFP136:latest
RUN pip install -U fire cloudml-hypertune
WORKDIR /app
COPY train.py .

ENTRYPOINT ["python", "train.py"]