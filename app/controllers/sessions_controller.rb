class SessionsController < ApplicationController
  def new
    @session = Session.new
  end

  def create
    @session = Session.new(params[:session])

    if @session.save
      flash[:notice] = "Session was created successfully"
      redirect_to @session
    else
      render :new
    end
  end

end