Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  require 'api_version_constraint'

  namespace :api, defaults: { format: :json}, constraints: { subdomain: 'api'}, path: "/" do
    namespace :v1, path: "/", constraints: ApiVersionConstraint.new(version: 1, default: true) do
      resources :tasks
    end

  end




end
