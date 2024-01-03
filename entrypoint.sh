#!/bin/sh

cron_file="/var/spool/cron/crontabs/root"

user_cron="/config/cron"
default_cron="/config/default.cron"
selected_cron="${default_cron}"

echo "Installing crontab in ${cron_file}."

if test -e "$user_cron"; then
  echo "Using user supplied cron file:"
  selected_cron="${user_cron}"
else
  echo "User supplied no cron file. Using the default one:"
  selected_cron="${default_cron}"
fi

cat $selected_cron

install -m 0644 ${selected_cron} ${cron_file}

/usr/sbin/crond -f
