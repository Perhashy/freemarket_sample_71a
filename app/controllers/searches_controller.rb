class SearchesController < ApplicationController
  def index
    @products = Product.search(params[:keyword]).page(params[:page]).per(9).order("created_at DESC")
    @search = params[:keyword]
  end
end