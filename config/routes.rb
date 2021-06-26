Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_page/about'
  root 'applicatioin#hello'
end
