Rails.application.routes.draw do
  get 'api' => 'api#api'
  get 'addrs/index'
  root 'addrs#index'
end
