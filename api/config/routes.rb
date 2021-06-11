# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :trainee do
    namespace :v1 do
      mount_devise_token_auth_for 'Trainee', at: 'trainee_auth', controllers: {
        registrations: 'trainee/v1/trainees/registrations'
      }
    end
  end
end
