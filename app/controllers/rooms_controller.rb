class RoomsController < ApplicationController
    layout "admin"

    before_filter :set_active

    def set_active
        @rooms_active = "active"
    end
    def index
        @rooms = Room.all
        respond_to do |format|
            format.html
            format.json { render json: @rooms }
        end
    end

    def show
        @room = Room.find(params[:id])
    end

    def new
        @room = Room.new
    end

    def edit
        @room = Room.find(params[:id])
    end

    def create
        @room = Room.new(params[:room])

        if @room.save
            redirect_to @room, notice: 'Room was successfully created.' 
        else
            render action: "new"
        end
    end

    def update
        @room = Room.find(params[:id])

        if @room.update_attributes(params[:room])
            redirect_to @room, notice: 'Room was successfully updated.' 
        else
            render action: "edit"
        end
    end

    def destroy
        @room = Room.find(params[:id])
        @room.destroy

        redirect_to rooms_url
    end
end
