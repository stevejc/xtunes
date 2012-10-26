class PurchasesController < ApplicationController
  
  def index
    if current_user
     @songs = current_user.songs
    else
      @songs = []
    end
  end
end