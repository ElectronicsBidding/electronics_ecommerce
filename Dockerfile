FROM ruby:3.1.2

RUN apt-get update && apt-get install -y postgresql-client nodejs
RUN mkdir /app

WORKDIR /app

COPY . /app

RUN bundle install
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]