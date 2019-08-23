#!/bin/bash
while ! ping -c 1 redis-0.redis; do
    echo 'Waiting for server'
    sleep 1
done

mkdir -p /data
cp /redis-config/sentinel.conf /data/sentinel.conf
redis-sentinel /data/sentinel.conf

