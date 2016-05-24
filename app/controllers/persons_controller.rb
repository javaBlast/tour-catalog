class PersonsController < ApplicationController
  def profile
        @hotels = Hotel.all
  end
end
