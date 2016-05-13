module PageObjects
  def tv_review
    @home_page ||= Pages::HomePage.new
  end
end