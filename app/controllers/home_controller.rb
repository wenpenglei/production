class HomeController < ApplicationController
  http_basic_authenticate_with :name => "123456", :password => "update", :except => [:index, :show]
  def index
  end
end
