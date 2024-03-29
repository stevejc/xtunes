class MixtapesController < ApplicationController
   
    def index
      if current_user
        @mixtapes = current_user.mixtapes
      else
        gon.playlist = Song.all.sample(3)
      end
    end

    def new
      @mixtape = Mixtape.new
      @mixtape.playlists.build
 
    end

    def create
      @mixtape = current_user.mixtapes.new(params[:mixtape])

      if @mixtape.save
        flash[:notice] = "You have successfully added the #{@mixtape.name} mixtape!"
        
        redirect_to mixtapes_path
      else
        render :new
      end
    end

    def show
      @mixtape = current_user.mixtapes.find(params[:id])
      gon.playlist = @mixtape.songs
    end

    def edit
      @mixtape = Mixtape.find(params[:id])
    end

    def update
      @mixtape = Mixtape.find(params[:id])

      if @mixtape.update_attributes(params[:mixtape])
        flash[:notice] = "You have successfully updated the #{@mixtape.name} mixtape!"
        redirect_to mixtape_path(@mixtape)
      else
        render :edit
      end
    end

    def destroy
      @mixtape = Mixtape.find(params[:id])

      @mixtape.delete

      redirect_to mixtapes_path
    end
    

    
  end