#! /bin/bash
if ! command -v inspec &> /dev/null
then
  echo "Installing InSpec into the Environment"
  curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -c stable -P inspec 
fi

if ! command -v saf &> /dev/null
then
  echo "Installing MTIRE SAF CLI into the Environment"
  npm install -g npm
  npm install -g @mitre/saf 
fi

docker-compose -f docker-compose.yml up -d
