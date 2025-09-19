#!/usr/bin/env bash

set -o errexit

# Install dependencies
bundle install

# Run database migrations
bin/rails db:migrate
