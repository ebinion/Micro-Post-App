class UsersController < ApplicationController

  def create
    #Create user form
  end
  
  def new
    #Handle Form submissions
    new_u = User.create(:name => params[:name], :email => params[:email])
    redirect_to "/users"
  end
  
  def index
    @users = User.all
  end
  
  def edit
    @user = User.find params[:id]
  end
  
  def update
    @u_user = User.find(params[:id])
    @u_user.name = params[:name]
    @u_user.email = params[:email]
    @u_user.save
    
    redirect_to "/users"
  end
  
  def delete
    
  end

end