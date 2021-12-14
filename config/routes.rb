Rails.application.routes.draw do
  
  scope "/:locale" do
    root to: 'static_pages#home'

    resources :departments
    resources :projects
    resources :clients, except: [:show]
    resources :settings

    get "/about_us", to: "settings#about_us"
    get "/contact_us", to: "settings#contact_us"
    
    mount Ckeditor::Engine => '/ckeditor'
  end
end