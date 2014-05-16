Rails.application.routes.draw do
  devise_for :users, :controllers => {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords"
  }

  resources :ideas

  root to: redirect('/ideas')

  get '*path', controller: 'application', action: 'render_404'

end
