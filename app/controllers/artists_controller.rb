class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])


    @choice_id = params[:choice_id]
    flash[:notice] = 'In show method'
    if (nil == @choice_id) then
      flash[:notice] += '  @choice_id is nil'
    else
      flash[:notice] += '  @choice_id = '+ @choice_id
    end
    
    if (nil == params[:commit]) then
      flash[:notice] += '  commit is nil'
    else
      flash[:notice] += '  commit = ' + params[:commit]
    end  
    
    
    if @choice_id == "name"
      @albums_sort = @artist.albums.find(:all, :order => 'albums.name DESC')
      #redirect_to @artist
      #render :action => "_showalbumsort"}
    else
      flash[:notice] += 'Sorry, Charley'
      #format.html { redirect_to (albums) }
    end    
    #@albums_sort = @artist.albums.find(:all, :order => 'albums.name DESC')

    #if @commit.submit
    #after submit, you state flash notice & then
    #pull album data for artists from albums and pt it on the show pagem
    #or another show page,


    #flash[:notice] = 'Your wish has been granted'

    #redirect_to @albums_sort
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

  def submit
    
     #@artist = Artist.find(params[:id])

    #flash[:notice] = 'In commit method.  @choice_id = '+ @choice_id


    #respond_to do |format|
    #if params[:choice_id] == "name"
      #@albums_sort = @artist.albums.find(:all, :order => 'albums.name DESC')
      #format.html { render :action => "_showalbumsort"}
    #else
      #format.html { redirect_to (albums) }
    #end
  end

  #how do you say at @choice_id = params[name]

  #@albums_sort = @artist.albums.find(:all, :order => 'albums.name DESC')


  #then @choice_id = params[date]
  #@choice_id = @artist.albums.find(:all, :order => 'albums.date DESC')



end

