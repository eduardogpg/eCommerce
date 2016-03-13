Rails.application.routes.draw do

	#root 'welcome#index'
  	devise_for :users
  	
  	authenticated :user do
  		root 'welcome#index'
  	end

  	unauthenticated :user do
  		devise_scope :user do
  			root "welcome#unregistered", as: :unregistered_root
  		end 
  	end


end
