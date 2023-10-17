Build the Docker Image:
docker build -t your-docker-image-name:tag .

Push the Docker Image:
docker login -u your-dockerhub-username -p your-dockerhub-password
docker push your-docker-image-name:tag
