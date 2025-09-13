#!/usr/bin/env bash

set -o errexit

# Install dependencies
bundle install

# Precompile assets
bin/rails assets:precompile
bin/rails assets:clean

# Run database migrations
# On Render, this will run after the database is available
bin/rails db:migrate
