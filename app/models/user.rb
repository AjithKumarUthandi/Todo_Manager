#For User table
class User < ActiveRecord::Base
  has_many :todos
end
