FROM redmine:3.4.5

RUN rm -r /usr/src/redmine/plugins/* 
RUN rm -r /usr/src/redmine/config/* 
RUN rm -r /usr/src/redmine/public/*

COPY --chown=redmine:redmine ./plugins/ /usr/src/redmine/plugins/
COPY --chown=redmine:redmine ./config/ /usr/src/redmine/config/
COPY --chown=redmine:redmine ./public/ /usr/src/redmine/public/

COPY ./Gemfile /usr/src/redmine/Gemfile
