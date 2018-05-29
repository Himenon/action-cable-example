FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /app
COPY ./ /app
WORKDIR /app
RUN bundle install

CMD ["rails", "s"]
