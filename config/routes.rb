Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tests do
    resources :questions, shallow: true, only: [:new, :create, :edit, :show, :destroy, :update, :delete]
  end
end
