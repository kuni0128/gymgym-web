# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'Trainee', at: 'trainee_auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
