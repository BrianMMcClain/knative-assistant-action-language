FROM ruby:2.5.3-alpine3.8

ADD . /knative-assistant-action-language
WORKDIR /knative-assistant-action-language

RUN bundle install

EXPOSE 8080
ENTRYPOINT ["bundle", "exec", "ruby", "server.rb"]