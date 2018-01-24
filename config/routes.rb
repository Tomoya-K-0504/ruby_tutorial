Rails.application.routes.draw do
  resources :projects
  resources :goals
  resources :comments
  resources :members, except: [:firstVisit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#home'
  get 'about', to: 'welcome#about'


  get 'signup', to: 'members#signup'
  # TODO 新規入会者の時の以下の有効化
  post 'signup', to: 'members#firstVisit'

  get 'goal-list', to: 'goals#goalList'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  # get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'

end
