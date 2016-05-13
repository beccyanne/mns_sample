require_relative 'base_page'
require_relative 'home_page'

module PageObjects
  def home_page
    @home_page ||= Pages::HomePage.new
  end
end