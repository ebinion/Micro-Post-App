MicropostsApp::Application.routes.draw do  
  get "/", :controller => "posts", :action => "index"
  
  #User routes
  get "/users/create", :controller => "users", :action => "create"
  post "/users", :controller => "users", :action => "new"
  
  get "/users", :controller => "users", :action => "index"
  
  get "/users/:id/edit", :controller => "users", :action => "edit"
  #forgot how to do "PUT"
  post "/users/:id", :controller => "users", :action => "update"
end
