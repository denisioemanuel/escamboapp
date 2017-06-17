class Site::HomeController < ApplicationController
  layout "site"
  def index
  	raise "ERROR"
  	@categories = Category.all
  end
end
