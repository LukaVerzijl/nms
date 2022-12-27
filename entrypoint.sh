#!/bin/sh -l
mkdir nms-build
cd nms-build

wget -O BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

java -jar BuildTools.jar --rev $1

# Install to github .m2
mkdir -p .m2/repository
echo "Copying from /root/.m2/repository to $PWD/.m2/repository"
cp -a /root/.m2/repository/. .m2/repository