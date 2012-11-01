class HomeController < ApplicationController
  
  def index
    @search = Song.search(params[:q])
    if current_user.try(:admin?) || !current_user || current_user.songs.empty?
      @songs = @search.result
    else
      ids_to_exclude = []
        current_user.songs.each do |x|
          ids_to_exclude <<  x.id
        end
      songs_table = Arel::Table.new(:songs)
      @search = Song.where(songs_table[:id].not_in ids_to_exclude).search(params[:q])
      @songs = @search.result
    end
    @songs = @songs.uniq
    
    @mixtapes = Mixtape.find_all_by_user_id(current_user)
    
    
    
    if current_user
      @search_your_songs = current_user.songs.search(params[:q])
      @your_songs = @search_your_songs.result
      @your_songs = @your_songs.uniq
    else
      @your_songs = []
    end
    
    
  end
  
end