class StoreController < ApplicationController
  def index
    @hotels = Hotel.order(:title)
  end
end
