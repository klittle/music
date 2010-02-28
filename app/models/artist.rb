class Artist < ActiveRecord::Base
  has_many :albums
  
  def inspect
    "Artist(#{name})"
  end
  
  def albums_by_name
     @albums = albums.find(:all, :order => 'name DESC')
  end
  
  def albums_by_date
     @albums = albums.find(:all, :order => 'albums.created_at DESC')
  end
    
end
