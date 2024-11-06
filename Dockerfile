FROM hub.nexdev.net/nexus/base_redmine345

COPY --chown=redmine:redmine . /usr/src/redmine
RUN chmod -R 777 /usr/src/redmine/log
# RUN rm -r /usr/src/redmine/plugins/* 
# RUN rm -r /usr/src/redmine/config/* 
# RUN rm -r /usr/src/redmine/public/*

# COPY --chown=redmine:redmine ./plugins/ /usr/src/redmine/plugins/
# COPY --chown=redmine:redmine ./config/ /usr/src/redmine/config/
# COPY --chown=redmine:redmine ./public/ /usr/src/redmine/public/
# COPY --chown=redmine:redmine ./public/ /usr/src/redmine/log/

# COPY ./Gemfile /usr/src/redmine/Gemfile
