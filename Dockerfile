FROM python:2.7.15-slim
COPY . /srv/metadataproxy/

RUN pip --no-cache-dir install -r /srv/metadataproxy/requirements.txt && \
    pip --no-cache-dir install -r /srv/metadataproxy/requirements_wsgi.txt

EXPOSE 8000
VOLUME ["/var/run/docker.sock"]

WORKDIR /srv/metadataproxy
CMD ["/bin/sh", "run-server.sh"]
