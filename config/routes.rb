Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
    namespace :v1, path: '/', constraints: ApiVersionConstraint.new(version: 1) do

      resources :teste

    end

  end
end