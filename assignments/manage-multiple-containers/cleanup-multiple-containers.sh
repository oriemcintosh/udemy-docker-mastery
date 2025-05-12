#!/bin/bash
# Script to clean up Docker containers from a provided list

# Define container names array
containers=("$@")

# Check if any container names were provided
if [ ${#containers[@]} -eq 0 ]; then
    echo "No container names provided!"
    echo "Usage: $0 container1 container2 container3 ..."
    exit 1
fi

echo "Stopping containers..."
for container in "${containers[@]}"; do
    if docker container inspect "$container" >/dev/null 2>&1; then
        echo "Stopping $container..."
        docker container stop "$container"
    else
        echo "Container $container not found, skipping..."
    fi
done

echo "Removing containers..."
for container in "${containers[@]}"; do
    if docker container inspect "$container" >/dev/null 2>&1; then
        echo "Removing $container..."
        docker container rm "$container"
    fi
done

echo "Cleanup complete!"