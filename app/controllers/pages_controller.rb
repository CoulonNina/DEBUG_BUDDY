class PagesController < ApplicationController
  def home
    @last_buddies = Buddy.all.last(5)
  end
end
