# # Coveralls
# require 'coveralls'
# Coveralls.wear!

# # Simplecov
require 'simplecov'
SimpleCov.start

# For our specs to run, we need to require the Ruby classes we’re testing
require_relative '../animal'
require_relative '../shelter'
require_relative '../person'

# Configure RSpec
RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end
