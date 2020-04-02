#! /bin/sh

# Gets the project-name out of .appsody-config.yaml and puts it in the horizon/hzn.json file
grepresult=$(grep 'project-name:' ../.appsody-config.yaml)
servicename=${grepresult//*project-name: /}
sed -i.bk "s/\${PROJECT_NAME}/$servicename/g" ../horizon/hzn.json
rm -f ../horizon/hzn.json.bk

