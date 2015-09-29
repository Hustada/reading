Rails.application.routes.draw do
    root 'lists#index'

    resources :lists do
      resources :books
    end

    resources :books do
    member do
      put :finished
      put :unfinished
    end
  end
end
