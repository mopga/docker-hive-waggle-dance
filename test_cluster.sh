#!/bin/bash
set -x

echo -e "\nSTARTING WAGGLE DANCE SERVICES\n"
cd waggle-hive/ && docker-compose -f waggle-hive.yml up -d
echo -e "\nSTARTED FIRST WAGGLE DANCE SERVICE\n"

echo -e "\nSTARTING HIVE METASTORE SINGLEPOINT SERVICE\n"
cd ../hm2-test/ && docker-compose -f hive-only.yml up -d
echo -e "\nSTARTED HIVE METASTORE SINGLEPOINT SERVICE\n"

echo -e "\nSTARTING NGINX SERVICE\n"
cd ../nginx/ && docker-compose -f nginx.yml up -d
echo -e "\nSTARTED NGINX SERVICE\n"



