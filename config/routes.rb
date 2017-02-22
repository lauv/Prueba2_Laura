Rails.application.routes.draw do
  get 'works/index'

  # get 'work/index'
  root 'works#index'
  get 'delete_item/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
