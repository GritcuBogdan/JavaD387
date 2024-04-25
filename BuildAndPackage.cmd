:: Build, Test & Package the springboot project
::call mvnw.cmd package

:: Created docker image from the Dockerfile
docker build -t "d387-010479652" .

:: Create container from the image and run on port 80
docker run -d -p 8080:8080 -p 4200:4200 --name "d387" d387-010479652

