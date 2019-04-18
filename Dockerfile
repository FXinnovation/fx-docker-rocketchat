FROM rocketchat/rocket.chat:0.74.3

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

ADD ./resources /resources

RUN /resources/build && rm -rf /resources

LABEL "maintainer"="cloudsquad@fxinnovation.com" \
      "org.label-schema.name"="rocketchat" \
      "org.label-schema.base-image.name"="docker.io/rocketchat/rocket.chat" \
      "org.label-schema.base-image.version"="0.74.3" \
      "org.label-schema.description"="rocketchat in a container" \
      "org.label-schema.url"="https://rocket.chat" \
      "org.label-schema.vcs-url"="https://scm.dazzlingwrench.fxinnovation.com/fxinnovation-public/docker-rocketchat" \
      "org.label-schema.vendor"="FXinnovation" \
      "org.label-schema.schema-version"="1.0.0-rc.1" \
      "org.label-schema.applications.gitea.version"="1.7.6" \
      "org.label-schema.vcs-ref"=$VCS_REF \
      "org.label-schema.version"=$VERSION \
      "org.label-schema.build-date"=$BUILD_DATE \
      "org.label-schema.usage"="Please see README.md"
