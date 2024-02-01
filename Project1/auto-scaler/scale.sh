#!/bin/bash

service=$1
action=$2

# Get the current number of replicas
replicas=$(docker service ls --filter name=$service --format "{{.Replicas}}" | cut -d'/' -f1)

if [[ $action == "scaleup" ]]; then
    # Increase the number of replicas by 1
    ((replicas++))
elif [[ $action == "scaledown" ]]; then
    # Decrease the number of replicas by 1, but not less than 1
    if [[ $replicas -gt 1 ]]; then
        ((replicas--))
    fi
fi

# Scale the service
docker service scale $service=$replicas

echo "Scaled service $service to $replicas replicas."