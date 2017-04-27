#!/bin/bash
#Script to start packer

cd /var
sudo git clone https://github.com/KoenHaemels/InstallationApplicationGcloud.git
cd InstallationApplicationGcloud/
echo $GCLOUD_SERVICE_KEY | base64 --decode --ignore-garbage > ${HOME}/gcloud-service-key.json
sudo /bin/sed -i "s|accountFILE|${BUILD}|g" Credits/template.json
sudo /bin/sed -i "s/projectID/"${PROJECT_ID_GCLOUD}"/g" Credits/template.json
./main.sh
