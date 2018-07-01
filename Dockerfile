# postgres
#action_mailer
#
#config/cable.yml > redis url
#config/database.yml > production
#
#rake db:create:all
#rake db:migrate
#
# docker run -d -it --env POSTGRES_PASSWORD=superSecret123 --env DB_NAME=my-app_development --name mydbcontainer postgres:9.6
# docker run --rm -p 3000:3000 --env RAILS_ENV=production --env POSTGRES_USER=postgres --env POSTGRES_PASSWORD=superSecret123 --env RAILS_LOG_TO_STDOUT=yes --env RAILS_SERVE_STATIC_FILES=yes --link mydbcontainer:db tpmap
FROM ruby:2.5

# Install base packages
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev curl apt-transport-https vim
RUN mkdir /app
WORKDIR /app

# Install recent nodejs
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn
RUN echo "alias node=nodejs" > ~/.bashrc
RUN . ~/.bashrc

# cleanup
RUN rm -rf /var/lib/apt/lists/*

# Copy Gemfiles into place
COPY Gemfile* /app/

# Install ruby dependencies
RUN bundle install

# Copy the code into place
COPY . /app

# Install javascript dependencies
RUN yarn install

# precompile assets for production
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=superSecret123
RUN RAILS_ENV=production bundle exec rake assets:precompile

# Run puma server by default
EXPOSE 3000
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]