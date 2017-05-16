Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "my_wines#index"
  # Routes for the Wine_tag_pair resource:
  # CREATE
  get "/wine_tag_pairs/new", :controller => "wine_tag_pairs", :action => "new"
  post "/create_wine_tag_pair", :controller => "wine_tag_pairs", :action => "create"

  # READ
  get "/wine_tag_pairs", :controller => "wine_tag_pairs", :action => "index"
  get "/wine_tag_pairs/:id", :controller => "wine_tag_pairs", :action => "show"

  # UPDATE
  get "/wine_tag_pairs/:id/edit", :controller => "wine_tag_pairs", :action => "edit"
  post "/update_wine_tag_pair/:id", :controller => "wine_tag_pairs", :action => "update"

  # DELETE
  get "/delete_wine_tag_pair/:id", :controller => "wine_tag_pairs", :action => "destroy"
  #------------------------------

  # Routes for the Varietal resource:
  # CREATE
  get "/varietals/new", :controller => "varietals", :action => "new"
  post "/create_varietal", :controller => "varietals", :action => "create"

  # READ
  get "/varietals", :controller => "varietals", :action => "index"
  get "/varietals/:id", :controller => "varietals", :action => "show"

  # UPDATE
  get "/varietals/:id/edit", :controller => "varietals", :action => "edit"
  post "/update_varietal/:id", :controller => "varietals", :action => "update"

  # DELETE
  get "/delete_varietal/:id", :controller => "varietals", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the Bucket_list_wine resource:
  # CREATE
  get "/bucket_list_wines/new", :controller => "bucket_list_wines", :action => "new"
  post "/create_bucket_list_wine", :controller => "bucket_list_wines", :action => "create"

  # READ
  get "/bucket_list_wines", :controller => "bucket_list_wines", :action => "index"
  get "/bucket_list_wines/:id", :controller => "bucket_list_wines", :action => "show"

  # UPDATE
  get "/bucket_list_wines/:id/edit", :controller => "bucket_list_wines", :action => "edit"
  post "/update_bucket_list_wine/:id", :controller => "bucket_list_wines", :action => "update"

  # DELETE
  get "/delete_bucket_list_wine/:id", :controller => "bucket_list_wines", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Suggested_wine resource:
  # CREATE
  get "/suggested_wines/new", :controller => "suggested_wines", :action => "new"
  post "/create_suggested_wine", :controller => "suggested_wines", :action => "create"

  # READ
  get "/suggested_wines", :controller => "suggested_wines", :action => "index"
  get "/suggested_wines/:id", :controller => "suggested_wines", :action => "show"

  # UPDATE
  get "/suggested_wines/:id/edit", :controller => "suggested_wines", :action => "edit"
  post "/update_suggested_wine/:id", :controller => "suggested_wines", :action => "update"

  # DELETE
  get "/delete_suggested_wine/:id", :controller => "suggested_wines", :action => "destroy"
  #------------------------------

  # Routes for the Tasting_note_tag resource:
  # CREATE
  get "/tasting_note_tags/new", :controller => "tasting_note_tags", :action => "new"
  post "/create_tasting_note_tag", :controller => "tasting_note_tags", :action => "create"

  # READ
  get "/tasting_note_tags", :controller => "tasting_note_tags", :action => "index"
  get "/tasting_note_tags/:id", :controller => "tasting_note_tags", :action => "show"

  # UPDATE
  get "/tasting_note_tags/:id/edit", :controller => "tasting_note_tags", :action => "edit"
  post "/update_tasting_note_tag/:id", :controller => "tasting_note_tags", :action => "update"

  # DELETE
  get "/delete_tasting_note_tag/:id", :controller => "tasting_note_tags", :action => "destroy"
  #------------------------------

  # Routes for the Wine resource:
  # CREATE
  get "/wines/new", :controller => "wines", :action => "new"
  post "/create_wine", :controller => "wines", :action => "create"

  # READ
  get "/wines", :controller => "wines", :action => "index"
  get "/wines/:id", :controller => "wines", :action => "show"

  # UPDATE
  get "/wines/:id/edit", :controller => "wines", :action => "edit"
  post "/update_wine/:id", :controller => "wines", :action => "update"

  # DELETE
  get "/delete_wine/:id", :controller => "wines", :action => "destroy"
  #------------------------------

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
