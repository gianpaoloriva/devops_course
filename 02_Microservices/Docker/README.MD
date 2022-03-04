## First Docker

    cd .\01_flask
    
    docker build -t firstdocker .

    docker image ls

    docker run -p 4000:80 firstdocker

http://localhost:4000/

open a new command line

    docker container ls
 
## Upload image to Docker HUB

    docker login

--> go to https://hub.docker.com
  
    docker tag firstdocker YOURREPO/get-started:part2

--> push from DockerHub

    docker push YOURREPO/get-started:part2

--> pull from DockerHub

    docker run -p 4000:80 YOURREPO/get-started:part2

 
## Bulletin Board
 
    cd .\02_bulletin-board-app
    
    docker build -t secondocker .
    
    docker run -p 4001:8080 secondocker
    
    docker run -p 4002:8080 secondocker

http://localhost:4001/

http://localhost:4002/

    docker ps
    
    docker stop "CONTAINER ID" "CONTAINER ID"
