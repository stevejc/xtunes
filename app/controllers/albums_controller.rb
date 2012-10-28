class AlbumsController < ApplicationController
  before_filter :authenticate_user!
  before_filter do 
    unless current_user && current_user.admin?
      flash[:warning] = "You do not have access to the requested page!"
      redirect_to home_path 
    end
  end
  
    def index
      @albums = Album.order(:name)
    end

    def new
      @album = Album.new
    end

    def create
      @album = Album.new(params[:album])

      if @album.save
        flash[:notice] = "You have added #{@album.name}!"
        redirect_to albums_path
      else
        render :new
      end
    end

    def show
      @album = Album.find(params[:id])
    end

    def edit
      @album = Album.find(params[:id])
    end

    def update
      @album = Album.find(params[:id])

      if @album.update_attributes(params[:album])
        flash[:notice] = "You have updated #{@album.name}!"
        redirect_to album_path(@album)
      else
        render :edit
      end
    end

    def destroy
      @album = Album.find(params[:id])

      @album.delete

      redirect_to albums_path
    end

  end