ActionController::Routing::Routes.draw do |map|
  map.resources :artists

  map.root :controller => :albums
  map.resources :albums
  map.resources :tracks
  map.resources :artists
end
