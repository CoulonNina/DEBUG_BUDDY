class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def home
    @last_buddies = Buddy.all.last(5)
  end
end
