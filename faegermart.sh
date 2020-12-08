#!/bin/sh

COMPOSE_LOCATION=$(dirname "$0")

case "$1" in
    # Start services
    start | up)
        docker-compose -f $COMPOSE_LOCATION/docker-compose.yml up -d --build
        echo "#############################"
        echo "FaegerMart services have been started, give them 20 seconds or so to do their thing..."
        echo "#############################"
        ;;
    stop | down)
        docker-compose -f $COMPOSE_LOCATION/docker-compose.yml down
        ;;
    docker-rebuild)
        echo "##########################################"
        echo "##########################################"
        echo ""
        echo "This does a full rebuild... time for a cup of tea!"
        echo ""
        echo "##########################################"
        echo "##########################################"
        sleep 2
        docker-compose -f $COMPOSE_LOCATION/docker-compose.yml build --pull --no-cache
        docker-compose -f $COMPOSE_LOCATION/docker-compose.yml up -d
        ;;
    status | ps)
        docker-compose -f $COMPOSE_LOCATION/docker-compose.yml ps
        ;;
    logs)
        docker-compose -f $COMPOSE_LOCATION/docker-compose.yml logs $2
        ;;
    *)
        echo "Usage: $0 {start/up|stop/down|docker-rebuild|status}"
        ;;
esac