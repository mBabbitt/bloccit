Rails.application.routes.draw do
  get 'welcome/contacts'

  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'

end
