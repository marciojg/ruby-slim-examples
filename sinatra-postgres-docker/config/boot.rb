require 'rubygems'
require 'bundler'
require 'sinatra/base'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
Bundler.require :default, (ENV['RACK_ENV'] || :development).to_sym
