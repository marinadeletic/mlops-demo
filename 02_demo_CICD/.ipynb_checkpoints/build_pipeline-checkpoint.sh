
# Submits a Cloud Build job that builds and deploys
# the pipelines and pipelines components 

SUBSTITUTIONS=\
_INVERTING_PROXY_HOST=21bce3d410fd3c82-dot-us-central1.notebooks.googleusercontent.com,\
_TRAINER_IMAGE_NAME=trainer_image,\
_BASE_IMAGE_NAME=base_image,\
TAG_NAME=test,\
_PIPELINE_FOLDER=/home/mlops-demo/02_demo_CICD/pipeline,\
_PIPELINE_DSL=covertype_training_pipeline.py,\
_PIPELINE_PACKAGE=covertype_training_pipeline.yaml,\
_PIPELINE_NAME=covertype_training_deployment,\
_RUNTIME_VERSION=1.14,\
_PYTHON_VERSION=3.5,\
_COMPONENT_URL_SEARCH_PREFIX=https://raw.githubusercontent.com/kubeflow/pipelines/0.1.36/components/gcp/


gcloud builds submit .. --config cloudbuild.yaml --substitutions $SUBSTITUTIONS