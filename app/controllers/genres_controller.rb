class GenresController < ApplicationController
  
    def index
      @genres = Genre.all
    end

    def new
      @genre = Genre.new
    end

    def create
      @genre = Genre.new(params[:genre])

      if @genre.save
        flash[:notice] = "You have successfully added the #{@genre.name} genre!"
        redirect_to genres_path
      else
        render :new
      end
    end

    def show
      @genre = Genre.find(params[:id])
    end

    def edit
      @genre = Genre.find(params[:id])
    end

    def update
      @genre = Genre.find(params[:id])

      if @genre.update_attributes(params[:genre])
        flash[:notice] = "You have successfully updated the #{@genre.name} genre!"
        redirect_to genres_path
      else
        render :edit
      end
    end

    def destroy
      @genre = Genre.find(params[:id])

      @genre.delete

      redirect_to genres_path
    end

  end