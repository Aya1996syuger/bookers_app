Rails.application.routes.draw do

 
  get 'books/new'
 
  get 'top' => 'homes#top'


   resources :books

end