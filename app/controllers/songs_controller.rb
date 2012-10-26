class SongsController < ApplicationController
  
  def index
    if current_user.try(:admin?) || !current_user
      @songs = Song.all
    else
      @songs = Song.all
    end
  end
  
  def new
    @song = Song.new
    @artists = Artist.all
  end

  def create
    @song = Song.new(params[:song])
    
    if @song.save
      redirect_to songs_path
    else
      render :new
    end
  end
  
  def show
    @song = Song.find(params[:id])
  end
  
  def edit
    @song = Song.find(params[:id])
  end
  
  def update
    params[:song][:artist_ids] ||= []
    @song = Song.find(params[:id])
    
    if @song.update_attributes(params[:song])
      redirect_to song_path(@song)
    else
      render :edit
    end
  end
  
  def buy
    
    @song = Song.find(params[:song][:id])
    @user = User.find(current_user)
    @song.users << User.find(current_user)
    
    #if @user.balance >= @song.price 
    #  new_balance = @user.balance - @song.price
    #        flash[:notice] = "You have purchased #{@song.name}!"
    #else
     # flash[:notice] = "You have don't have enough money in your account to pusrchase #{@song.name}!"
    #end
    
    if @song.save #&& @user.update_attribute(:balance, new_balance) && new_balance  >= 0
      redirect_to songs_path
    else
      render :show
    end
  end
  
  def destroy
    @song = Song.find(params[:id])
    
    @song.delete
    
    redirect_to songs_path
  end
end