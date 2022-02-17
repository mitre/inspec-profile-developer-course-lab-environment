#! /bin/bash
if ! command -v inspec &> /dev/null
then
  echo "Installing InSpec into the Environment"
fi

docker-compose -f docker-compose.yml up -d
