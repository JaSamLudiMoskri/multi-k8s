docker build -t mandicm223/multi-reactk8s:latest -t mandicm223/multi-reactk8s:$SHA -f ./react-frontend/Dockerfile ./react-frontend
docker build -t mandicm223/multi-expressk8s:latest -t mandicm223/multi-expressk8s:$SHA -f ./express-server/Dockerfile ./express-server
docker build -t mandicm223/multi-workerk8s:latest -t mandicm223/multi-workerk8s:$SHA -f ./worker/Dockerfile ./worker

docker push mandicm223/multi-reactk8s:latest 
docker push mandicm223/multi-expressk8s:latest
docker push mandicm223/multi-workerk8s:latest

docker push mandicm223/multi-reactk8s:$SHA 
docker push mandicm223/multi-expressk8s:$SHA
docker push mandicm223/multi-workerk8s:$SHA


kubectl apply -f k8s

kubectl set image deployments/react-deployment react=mandicm223/multi-reactk8s:$SHA
kubectl set image deployments/express-deployment express=mandicm223/multi-expressk8s:$SHA
kubectl set image deployments/worker-deployment worker=mandicm223/multi-workerk8s:$SHA
