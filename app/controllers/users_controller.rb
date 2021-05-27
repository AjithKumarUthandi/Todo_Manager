class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  #index send the each value to User class n user.rb
  #that return the each user details with patterns
  def index
    render plain: User.all.map { |user| user.to_pleasant_string }.join("\n")
  end

  #Add a new user
  def create
    name = params[:name]
    email = params[:email]
    password = params[:password]
    new_user = User.create!(
      name: name,
      email: email,
      password: password,
    )
    responce_text = "Hey your new user is created with the id #{new_user.id}"
    render plain: responce_text
  end
end
