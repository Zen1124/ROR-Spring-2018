Rails.application.routes.draw do
  get "/calculator", to: "calculator#index"
  post "/calculate", to: "calculator#calculate"
end
