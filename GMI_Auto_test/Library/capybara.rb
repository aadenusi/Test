require 'selenium-webdriver'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'rspec/expectations'
require 'RSpec'
#require 'capybara'
#require 'rubygems'

include Capybara::DSL
include RSpec::Matchers
Capybara.default_driver = :selenium


