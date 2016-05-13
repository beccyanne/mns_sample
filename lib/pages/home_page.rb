module Pages
  class HomePage < Pages::BasePage
    element(:test) { 'test' }

    def visit_page
      visit 'http://www.test'
    end
  end
end
