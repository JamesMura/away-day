class PagesController < ApplicationController
  def home
    @sessions = Session.all
  end

  def emergency
  end

  def directions
  end
end
