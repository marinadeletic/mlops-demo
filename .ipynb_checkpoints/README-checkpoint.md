# mlops-demo

This demo illustrates the use of GCP to develop and deploy a machine learning model on GCP's AI platform using kubeflow pipelines. This demo is based off labs created by [Jarek Kazmierczak](https://github.com/jarokaz/mlops-labs) which walk through the full creation process.


To run:

1. Use [Jarek's MLOps Labs](https://github.com/jarokaz/mlops-labs/tree/master/labs) lab-00-environment-setup.Install Kustomize in cloud shell. Run the install.sh file in the cloud shell with your project ID. This will create the base docker image with all relavant dependancies (KFP, TFX, Apache-beam...), set up an AI notebook with the newly created environement, storage containers for the models and SQL metadata logging system. 

2. Run the Experiment Notebook. This notebook illustrates the experimentation process a data scientists would undergo to develop the model. 

3. Set up the Artifact Creation Notebook
    - Set Project ID to reflect the project in use
    - Follow the **NOTES** in the Notebook to ensure the correct variables are set 
4. Run Artifact Creation Notebook
    - this step takes approximately an hour to complete

