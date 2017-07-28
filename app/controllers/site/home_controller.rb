class Site::HomeController < ApplicationController
  layout "site"
  def index
  	@categories = Category.order(description: :asc)
  	@ads = Ad.order(created_at: :asc).limit(5)
  end
end
