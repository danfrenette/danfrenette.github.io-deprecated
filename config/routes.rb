Rails.application.routes.draw do
  resource :home_page, only: %i[show]
  root to: "home_page#show"
end
