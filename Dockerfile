FROM ruby:2.2.3 

# The MAINTAINER instruction allows you to set the Author field of the generated images.
MAINTAINER Nguyen Van Hoc <hocnv.qn@gmail.com>

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 \
  && echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list \
  && curl -sL https://deb.nodesource.com/setup_5.x | bash \
  && apt-get update \ 
  && apt-get install -y mongodb-org --no-install-recommends \
  && apt-get install -y nodejs \
  && gem install rspec \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
