class PagesController < ApplicationController
  def home
  end


  def billboard
    if params[:search].nil? || params[:search].strip.empty?
      @restaurants = Restaurant.all
    else
      @restaurants = Restaurant.search(params[:search])
    end
  end
end
