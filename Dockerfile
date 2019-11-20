FROM hyperized/scratch:latest as trigger
# Used to trigger Docker hubs auto build, which it wont do on the official images

FROM ruby:alpine

LABEL maintainer="Gerben Geijteman <gerben@hyperized.net>"
LABEL description="Tiny YAML linter Docker instance"

RUN gem install yaml-lint
