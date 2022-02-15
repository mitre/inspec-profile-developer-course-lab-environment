#! /bin/bash
if ! command -v inspec &> /dev/null
then
  echo "Installing InSpec into the Environment"
  curl -L https://omnitruck.cinc.sh/install.sh | sudo bash -s -- -P cinc-auditor
fi

docker-compose -f docker-compose.yml up -d
