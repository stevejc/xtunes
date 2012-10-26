class ArtistsController < ApplicationController
  before_filter :authenticate_user!
  before_filter do 
    unless current_user && current_user.admin?
      flash[:warning] = "You do not have access to the requested page!"
      redirect_to home_path 
    end
  end
  
    def index
      @artists = Artist.all
    end

    def new
      @artist = Artist.new
    end

    def create
      @artist = Artist.new(params[:artist])

      if @artist.save
        flash[:notice] = "You have added #{@artist.name}!"
        redirect_to artists_path
      else
        render :new
      end
    end

    def show
      @artist = Artist.find(params[:id])
    end

    def edit
      @artist = Artist.find(params[:id])
    end

    def update
      @artist = Artist.find(params[:id])

      if @artist.update_attributes(params[:artist])
        flash[:notice] = "You have updated #{@artist.name}!"
        redirect_to artist_path(@artist)
      else
        render :edit
      end
    end

    def destroy
      @artist = Artist.find(params[:id])

      @artist.delete

      redirect_to artists_path
    end

  end