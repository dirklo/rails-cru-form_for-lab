Rails.application.routes.draw do
  resources :songs, only: %i[ index new show edit create update ]
  resources :genres, only: %i[ index new show edit create update ]
  resources :artists, only: %i[ index new show edit create update ]
end
