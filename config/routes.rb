Rails.application.routes.draw do
  get "todo", to: "todos#index"
  get "todo/:id", to: "todos#show"
end
