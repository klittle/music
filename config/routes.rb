ActionController::Routing::Routes.draw do |map|

  map.root :controller => :albums
  map.resources :albums
  map.resources :tracks
  map.resources :artists
end
