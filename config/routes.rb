Rails.application.routes.draw do
  resources :contact_emails, only: %i[create]
  resource :home_page, only: %i[show]
  root to: "home_page#show"
end
