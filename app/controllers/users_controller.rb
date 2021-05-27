class UsersController < ApplicationController

  #index send the each value to User class n user.rb
  #that return the each user details with patterns
  def index
    render plain: User.all.map { |user| user.to_pleasant_string }.join("\n")
  end
end
