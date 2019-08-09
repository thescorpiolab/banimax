Rails.application.routes.draw do
  root :to => 'popup_settings#edit'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
	resources :popup_settings, only: [:edit,:update]

end
