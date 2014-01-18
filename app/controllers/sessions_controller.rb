class SessionsController < ApplicationController
    layout "admin"
    respond_to :html, :json
    before_filter :set_active

    def set_active
        @sessions_active = "active"
    end
    def index
        @sessions = Session.all
        respond_to do |format|
              format.html
              format.json { respond_with @sessions }
        end
    end

    def show
        @session = Session.find(params[:id])
    end

    def new
        @session = Session.new
    end

    def edit
        @session = Session.find(params[:id])
    end

    def create
        @session = Session.new(params[:session])

        if @session.save
            redirect_to @session, notice: 'Session was successfully created.' 
        else
            render action: "new" 
        end
    end

    def update
        @session = Session.find(params[:id])

        if @session.update_attributes(params[:session])
            redirect_to @session, notice: 'Session was successfully updated.'
        else
            render action: "edit" 
        end
    end

    def destroy
        @session = Session.find(params[:id])
        @session.destroy

        redirect_to sessions_url
    end
end
