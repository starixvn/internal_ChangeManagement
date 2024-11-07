FROM hub.nexdev.net/nexus/base_redmine345

COPY --chown=redmine:redmine . /usr/src/redmine
RUN chmod -R 777 /usr/src/redmine/log
