FROM xmars/odoo:16

COPY ./requirements.txt /etc/odoo/requirements.txt
RUN pip3 install -r /etc/odoo/requirements.txt