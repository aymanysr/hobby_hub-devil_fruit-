class PagesController < ApplicationController
  def home
    @devil_fruits = DevilFruit.all
  end
end
