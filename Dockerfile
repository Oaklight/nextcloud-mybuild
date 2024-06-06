FROM nextcloud:stable

COPY ./scripts /var/scripts

RUN chmod +x /var/scripts/setup.sh
RUN /var/scripts/setup.sh
