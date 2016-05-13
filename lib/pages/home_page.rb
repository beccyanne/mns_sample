module Pages
  class HomePage < Pages::BasePage
    element(:search) { '#global-search' }
    element(:search_go) { '#goButton' }
    element(:search_result_grid) { '#product-listing > div > form > ol' }
    element(:search_message) { '#product-listing-page > div.wrap.search-results-plp > div.M083.search-results' }

    def visit_page
      visit 'http://www.marksandspencer.com/'
    end

    def search_for_product(product)
      search.set product
      search_go.click
    end

    def product_count
      products = search_result_grid.all 'li'
      products.count
    end
  end
end
