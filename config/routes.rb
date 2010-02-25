ActionController::Routing::Routes.draw do |map|

  map.root :controller => :albums
  map.resources :albums
  map.resources :tracks
  map.resources :artists
  map.sort_albums 'sort', :controller => 'artists', :action => 'sort_albums'
end
