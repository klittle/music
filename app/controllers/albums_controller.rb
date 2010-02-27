class AlbumsController < ApplicationController
  def show
    @select_type = Album.find(:all, :order => :name)
    @order = params[:order]
    
    
    def sort_select
    @sort_style = params[sort_style]
    
     sort_choice = 
      {'Albums-A-Z'=> 1,
      'Albums-Z-A'=>  2,    
      'Release Date-ASC' => 3,    
      'Release Date-DESC' =>4}
     @sort_choice = sort_choice[@sort_style]
    end

  end
  
  def sort_albums
    #Type.find(params[:id])
    #flash[:notice] = 'Found id'
  end
    
  
  
  
  def index
    @albums = Album.find(:all)
  end
  
  def new
    @album = Album.new
  end
  
  def create
    @album = Album.create! params[:album]
    redirect_to @album
  end
  
  def edit
    @album = Album.find(params[:id])
  end
  
  def update
    @album = Album.find(params[:id])
    @album.update_attributes params[:album]
    redirect_to @album
  end
  
  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to albums_path
  end
  
  

  
  
  
  
end
