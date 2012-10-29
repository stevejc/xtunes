class PurchasesController < ApplicationController
  
  def index
    @search = current_user.songs.search(params[:q])
    if current_user
     @songs = @search.result
     @songs = @songs.uniq
    else
      @songs = []
    end
  end
  
  def search
    index
    render :index
  end
  
end

