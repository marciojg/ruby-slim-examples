FROM ruby:3.1.2

WORKDIR /usr/src/app

COPY Gemfile* .

RUN bundle check | bundle install

COPY . .

CMD 'bundle exec puma'
