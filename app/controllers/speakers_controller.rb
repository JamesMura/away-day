class SpeakersController < ApplicationController
    layout "admin"
    before_filter :set_active

    def set_active
        @speakers_active = "active"
    end
    def index
        @speakers = Speaker.all
    end

    def show
        @speaker = Speaker.find(params[:id])
    end

    def new
        @speaker = Speaker.new
    end

    def edit
        @speaker = Speaker.find(params[:id])
    end

    def create
        @speaker = Speaker.new(params[:speaker])

        if @speaker.save
            redirect_to @speaker, notice: 'Speaker was successfully created.'
        else
            render action: "new"
        end
    end

    def update
        @speaker = Speaker.find(params[:id])

        if @speaker.update_attributes(params[:speaker])
            redirect_to @speaker, notice: 'Speaker was successfully updated.'
        else
            render action: "edit"
        end
    end

    def destroy
        @speaker = Speaker.find(params[:id])
        @speaker.destroy

        redirect_to speakers_url
    end
end
