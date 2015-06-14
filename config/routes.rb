Rails.application.routes.draw do
 
  resources :posts

  resources :advertisement

  resources :question

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
