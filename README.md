## Simple Rasa Bot on Google Cloud

This repository shows how to deploy your Rasa Bot onto Google Cloud Run

Deployment does not include training models

## Install gcloud cli

To install the gcloud cli - go to

https://cloud.google.com/sdk/docs/install

## Login to google cloud

To login to your google cloud account from command line simply write

```
gcloud auth login
```
This will open your browser and you can login. 

## Create a google cloud project

Now you should create a google cloud project from console.

https://console.cloud.google.com/

## Set cloud project as your current project
Now back in the command line, set the current project

```
gcloud config set project PROJECT_ID
```

## Deploy to Google Cloud Run
https://cloud.google.com/build/docs/deploying-builds/deploy-cloud-run

To deploy, this tutorial is followed. Make sure you have enabled cloud run.

## Deploy using Google Cloud Build

In order to deploy using Google Cloud Build, first enable the permissions as described here

https://cloud.google.com/build/docs/deploying-builds/deploy-cloud-run?authuser=3#required_iam_permissions

Once enabled.

Check the file `cloudbuild.yaml` and replace the project `cat-food-finder` with your `PROJECT-ID`

## Build a rasa bot
Before deploying, make sure you have a trained model. The image build makes the assumption that you have trained a model locally and using rasa run simply to startup that model in the cloud run container. This is quite important!!!


## Deploy using gcloud build
To deploy

run

```sh
gcloud builds submit
```

Upon success, you will see the deployed URL.

## Test the service
 Curl the following

 ```
 ```