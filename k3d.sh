#!/bin/bash
###
# Simple bash script to handle k3d cluster operations.
# TODO : Add validation
###

CLUSTER_NAME=local

check_cluster() {
    return `k3d cluster get $CLUSTER_NAME --no-headers | grep -q "$CLUSTER_NAME"`;
}

create() {
    echo -e "\nCreating k3d cluster $CLUSTER_NAME"; 
    k3d cluster create $CLUSTER_NAME -p "8081:80@loadbalancer"
}

start() {
    echo -e "\nStarting k3d cluster $CLUSTER_NAME";
    k3d cluster start $CLUSTER_NAME
}

stop() {
    echo "\nStopping k3d cluster $CLUSTER_NAME";
    k3d cluster stop $CLUSTER_NAME
}

delete() {
    echo -e "\nDeleting k3d cluster $CLUSTER_NAME";
    k3d cluster delete $CLUSTER_NAME
}

action() {
    case $ans in 
        c)  create ;;
        s)  start ;;
        p)  stop ;;
        d)  delete ;;
        *)  echo -e "\nInvalid response" ;;
    esac
}

ans=$1
if [[ -z $ans ]]; then
    read -n 1 -p "Choose one of create(c), start(s), stop(p), delete (d)" ans;
    action;
else
    action
fi
