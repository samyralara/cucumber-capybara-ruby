require "capybara"
require "capybara/cucumber"

require_relative "helpers"
require_relative "actions"

World(Helpers) #carrega o arquivo
World(Actions)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = "http://parodify.qaninja.com.br"
end
