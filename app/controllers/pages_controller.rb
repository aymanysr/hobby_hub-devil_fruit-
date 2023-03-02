class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @devil_fruits = DevilFruit.all
  end
end
