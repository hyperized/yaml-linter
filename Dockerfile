FROM ruby:alpine
LABEL maintainer="Gerben Geijteman <gerben@hyperized.net>"
LABEL description="Tiny YAML linter Docker instance"
RUN gem install yaml-lint
