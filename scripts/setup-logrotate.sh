#!/bin/bash
echo -e "Install logrotate"
sudo apt-get install -y logrotate

ODOO_LOG_PATH=$(readlink -f ../logs)

cat <<EOF > /etc/logrotate.d/odoo
$ODOO_LOG_PATH/*.log {
        daily
        size 10M
        rotate 10
        compress
        delaycompress
        missingok
        notifempty
        su root root
}
EOF