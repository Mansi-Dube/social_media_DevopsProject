docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID mansidube/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID mansidube/$JOB_NAME:latest

docker push mansidube/$JOB_NAME:$BUILD_ID

docker push mansidube/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID mansidube/$JOB_NAME:$BUILD_ID mansidube/$JOB_NAME:latest
