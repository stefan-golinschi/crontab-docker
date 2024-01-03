#!/bin/sh

current_date=$(date)

echo "[$current_date]: $1" >> /tmp/my-cron.log
