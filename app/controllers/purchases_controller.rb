class PurchasesController < ApplicationController
  
  def index
    @search = current_user.songs.search(params[:q])
    if current_user
     @songs = @search.result
    else
      @songs = []
    end
  end
end

