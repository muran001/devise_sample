Rails.application.routes.draw do
  namespace :admin do
    get 'base/index'
  end

  devise_for :users, :controllers => {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords"
  }
  get '/admin' => 'admin/base#index'
  resources :ideas

  root to: redirect('/ideas')

  get '*path', controller: 'application', action: 'render_404'

end
