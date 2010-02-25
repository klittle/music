class ArtistsController < ApplicationController
  
  def show
    @artist = Artist.find(params[:id])
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
  
  
  @Music_Typesa = [
    #Display                          stored in db
    ["Album Name-Asc",                  "AlbumsA"],
    ["Album Name-Des",                  "AlbumsZ"],    
    ["Release Date-Most Recent",      "ReleaseAsc"],    
    ["Release Date-Oldest",           "ReleaseDesc"], 
    ]

    def sort_artists
      @sortchoices = params[:sortchoices]
      
      @sort_order =
      { 'Album Name-Asc' => SQL ASC, 'Album Name-Des' = SQL DES,
        'Release Date-Most Recent' => Date Order, 'Release Date-Oldest' => Date Des
        }
      #@sort_order = sort_order[value]
    end
  
end

