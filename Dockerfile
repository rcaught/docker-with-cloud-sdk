FROM docker

RUN apk add --update python bash &&  rm -rf /var/cache/apk/*
ENV HOME /
RUN curl https://sdk.cloud.google.com | bash

ENV PATH /google-cloud-sdk/bin:$PATH
VOLUME ["/.config"]

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/bin/bash"]
