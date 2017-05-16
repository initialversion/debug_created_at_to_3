Rails.application.routes.draw do
  # Routes for the My_wine resource:
  # CREATE
  get "/my_wines/new", :controller => "my_wines", :action => "new"
  post "/create_my_wine", :controller => "my_wines", :action => "create"

  # READ
  get "/my_wines", :controller => "my_wines", :action => "index"
  get "/my_wines/:id", :controller => "my_wines", :action => "show"

  # UPDATE
  get "/my_wines/:id/edit", :controller => "my_wines", :action => "edit"
  post "/update_my_wine/:id", :controller => "my_wines", :action => "update"

  # DELETE
  get "/delete_my_wine/:id", :controller => "my_wines", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
