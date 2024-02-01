docker build -t my-scaler .
docker tag my-scaler:latest carlhat/my-scaler:latest
docker push carlhat/my-scaler:latest