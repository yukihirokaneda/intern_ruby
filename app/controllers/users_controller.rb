class usersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @users = User.new
  end
  def create
    @users = User.new(work_params)

     @users.save
   end

   def user_params
     params.require(:user).permit(:title,:prname,:username,:prm,:cre,:destroy,:contact,:about,:tre,:mail,:image)
   end
   end
