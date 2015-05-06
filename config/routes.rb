Rails.application.routes.draw do

  post 'testpdf' => 'visitors#testpdf', as: 'testpdf'
  get 'testpdf_cover' => 'visitors#testpdf_cover', as: 'testpdf_cover'
  get 'testpdf_header' => 'visitors#testpdf_header', as: 'testpdf_header'
  get 'testpdf_footer' => 'visitors#testpdf_footer', as: 'testpdf_footer'

  root to: 'visitors#index'
end
