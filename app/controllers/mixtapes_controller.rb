class MixtapesController < ApplicationController
   
    def index
      @mixtapes = Mixtape.find_all_by_user_id(current_user)
    end

    def new
      @mixtape = Mixtape.new
      @mixtape.playlists.build
 
    end

    def create
      @mixtape = current_user.mixtapes.new(params[:mixtape])



      if @mixtape.save
        redirect_to mixtapes_path
      else
        render :new
      end
    end

    def show
      @mixtape = current_user.mixtapes.find(params[:id])
    end

    def edit
      @mixtape = Mixtape.find(params[:id])
    end

    def update
      @mixtape = Mixtape.find(params[:id])

      if @mixtape.update_attributes(params[:mixtape])
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