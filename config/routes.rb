Rails.application.routes.draw do
  
  
  resources :types
  resources :statuses
  resources :subcategory2s
    resources :subcategory1s

  resources :items do
    collection do
      get 'search'
    end
    collection do
      get 'searc'
    end
  end
  
  resources :categories 
    
  
    get 'pages/realestate'
    get 'pages/sea', to: "pages#sea"
   
 
 match '/sub1_categories/find_by_category', to: 'sub1_categories#find_by_category', via: :post
 
 
end

