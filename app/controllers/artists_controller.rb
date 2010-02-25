class ArtistsController < ApplicationController
  
  def show
    @artist = Artist.find(params[:id])
    

    @choice_id = params[:choice_id]

    
    #@albums = @artist.albums.find(:all, :order => @choice_id)
    #flash[:notice] = @choice_id
    #@choice_id = Choice_id.create! params[:choice_id]
    #@choice_id.save
    flash[:notice] = 'Your wish has been granted'

 
   
   
   
  end
  
  def index
    @artists = Artist.find(:all)
  end
  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.create! params[:artist]
    redirect_to @artist
    
    @choice_id = params[:choice_id]
   
    
    #@choice = Choice.create! params[:choice]
    #@choice.save
    #flash[:notice] = 'Your wish has been granted'
    #redirect_to Artists.sort_albums
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes params[:artist]
    redirect_to @artist
  end
  
  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end
  
  def sort_albums
     choice = params[:choice]
     artist = params[:artist]
     album = params[:album]
    
     
    end
        
  
end

