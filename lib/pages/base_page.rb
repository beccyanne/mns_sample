require 'capybara/cucumber'
require 'rspec'

module Pages
  class BasePage
    include Capybara::DSL
    include RSpec::Matchers

    def self.element(element_name, options = {})
      define_method "#{element_name}" do |*args|
        find yield(*args), options
      end
    end

    def self.elements(element_name, options = {})
      define_method "#{element_name}" do |*args|
        page.all yield(*args), options
      end
    end
  end
end
