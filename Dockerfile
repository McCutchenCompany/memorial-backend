FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential mysql-client --fix-missing --no-install-recommends


ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install
EXPOSE 3000
ADD . $APP_HOME
