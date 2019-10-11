#!/bin/sh -l

if [[ -z "${SONAR_LOGIN}" ]]; then
  echo "Set the SONAR_LOGIN env variable."
  exit 1
fi

if [ -n "${BUILD_PATH}" ]
then
   cd ${BUILD_PATH}
fi

sh -c "echo MAVEN VERIFY SONAR:SONAR"
sh -c "mvn --version"
sh -c "mvn verify sonar:sonar -Dsonar.projectKey=philpotisk_universal-resolver -Dsonar.organization=${SONAR_ORG} -Dsonar.host.url=https://sonarcloud.io -Dsonar.login=${SONAR_LOGIN}"
