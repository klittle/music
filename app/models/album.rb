class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :tracks
  validates_presence_of :name
  # has_attached_file :photo, :styles => {:medium => "300x300", :thumb => "100x100>"}
  
  def inspect
    "Album(#{name})"
  end
  
  Music_Types = [
    #Display                  stored in db
    ["Albums-A-Z",            "AlbumsA"],
    ["Albums-Z-A",            "AlbumsZ"],    
    ["Release Date-ASC",      "ReleaseAsc"],    
    ["Release Date-DESC",     "ReleaseDesc"], 
    ]
end
