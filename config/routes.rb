Rails.application.routes.draw do
  defaults format: 'json' do
    scope '/OpenBanking/v2' do
      resources :accounts, only: [:index, :show] do
        resources :transactions, only: [:index]
        resources :balances, only: [:index]
        resources :statements, only: [:index, :show]
      end
      resources :transactions, only: [:index]
      resources :balances, only: [:index]
      resources :statements, only: [:index]
    end
  end
end
