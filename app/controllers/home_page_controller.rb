class HomePageController < ApplicationController
  def show
    @home_page = HomePage.new
  end
end
