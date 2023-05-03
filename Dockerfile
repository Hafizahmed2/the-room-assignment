FROM ruby:2.7.5

RUN apt-get update -qq && apt-get install -y build-essential nodejs npm

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler

RUN bundle install

COPY . .

RUN npm install

EXPOSE 3000
