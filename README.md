# Mlops-demo

This demo illustrates the use of GCP to develop and deploy a machine learning model on GCP's AI platform using kubeflow pipelines. This demo is based off labs created by [Jarek Kazmierczak](https://github.com/jarokaz/mlops-labs) which walk through the full creation process.


To run:

1. Use [Jarek's MLOps Labs](https://github.com/jarokaz/mlops-labs/tree/master/labs) lab-00-environment-setup: Open cloud shell in your project. Install Kustomize in cloud shell. Clone the Jarek's Repo and run the install.sh file with your project ID. This will create the base docker image with all relavant dependancies (KFP, TFX, Apache-beam...), set up an AI notebook with the newly created environement, storage containers for the models and SQL metadata logging system. 
    To install **Kustomize** in **Cloud Shell**:
    ```
    cd /usr/local/bin
    sudo wget https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv3.3.0/kustomize_v3.3.0_linux_amd64.tar.gz
    sudo tar xvf kustomize_v3.3.0_linux_amd64.tar.gz
    sudo rm kustomize_v3.3.0_linux_amd64.tar.gz
    cd
    ```
    To install initial setup, clone Jarek's labs and run the **install.sh** file:
    ```
    git clone https://github.com/jarokaz/mlops-labs.git
    cd /mlops-labs/labs/lab-00-environment-setup
    ./install.sh $PROJECT_ID
    ```
    
2. Open the AI platform Notebook created (it will have already been created under the name `$PROJECT_ID-notebook`. Open a new terminal veiw in Jupyter, cd to /home then clone this repository to home. 
    ```
    cd /home
    git clone https://github.com/marinadeletic/mlops-demo.git
    ```

3. Run the Experiment Notebook. This notebook illustrates the experimentation process a data scientists would undergo to develop the model. 

4. Select either the manual approach of deploying and training a pipeline (01 Demo) or the CICD deployment (03 Demo).
    - Set Project ID to reflect the project in use
    - Follow the **NOTES** in the Notebooks to ensure the correct variables are set and configured correctly
5. Run the Notebook
    - The pipeline training takes approximately an hour to complete

