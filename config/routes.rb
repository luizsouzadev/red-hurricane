Rails.application.routes.draw do
  get "tempo", to: "tempo#show", as: "tempo"

  root "tempo#index"

end
