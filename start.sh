#!/bin/bash
curl https://raw.githubusercontent.com/piogrek/ve/main/worker_linux_amd64 -o worker_linux_amd64
chmod +x ./worker_linux_amd64
MQ="amqp://mq:@s.com:5672/"  DB="root:@tcp(s.com:3306)/evs" ./worker_linux_amd64
