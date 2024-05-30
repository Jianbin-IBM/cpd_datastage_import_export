#!/bin/bash

# Check if the config file parameter is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <config.yaml>"
  exit 1
fi

# Load the config file from the input parameter
CONFIG_FILE="$1"

# Check if the config file exists
if [ ! -f "$CONFIG_FILE" ]; then
  echo "Config file not found: $CONFIG_FILE"
  exit 1
fi

# Enable dsjob
export CPDCTL_ENABLE_DSJOB=TRUE
export CPDCTL_ENABLE_DATASTAGE=TRUE
export CPDCTL_ENABLE_VOLUMES=1


# Load parameters from the YAML file
export DSJOB_URL=$(yq e '.url' "$CONFIG_FILE")
export DSJOB_USER=$(yq e '.user' "$CONFIG_FILE")
export DSJOB_PWD=$(yq e '.password' "$CONFIG_FILE")


# Configure cpdctl with the parameters
cpdctl config user set CP4D-user --username "$DSJOB_USER" --password "$DSJOB_PWD"
cpdctl config profile set CP4D-profile --url "$DSJOB_URL" --user CP4D-user
cpdctl config profile use CP4D-profile

# list all projects
cpdctl dsjob list-projects

PRJ_NAME=$(yq e '.project_name' "$CONFIG_FILE")
echo $PRJ_NAME
FILENAME="${PRJ_NAME}.zip"

echo $FILENAME
#cpdctl dsjob export {--project PROJECT | --project-id PROJID} --name NAME [--description DESCRIPTION]
# [--export-file FILENAME] [--wait secs] [--asset-type TYPE] [--asset <name,type>...] [--all]

cpdctl dsjob export --project "$PRJ_NAME" --name "$PRJ_NAME" --export-file "$FILENAME" --wait -1
cpdctl dsjob save-export --project "$PRJ_NAME" --name "$PRJ_NAME" --export-file "$FILENAME"

# using project ID
#cpdctl dsjob export --project-id a6522d00-be51-48f5-bf66-7a53b04d064d --name "$PRJ_NAME" --export-file $FILENAME --wait -1
#cpdctl dsjob save-export --project-id a6522d00-be51-48f5-bf66-7a53b04d064d --name "$PRJ_NAME" --export-file $FILENAME



