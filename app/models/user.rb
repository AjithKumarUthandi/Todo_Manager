#For User table
class User < ActiveRecord::Base
  def to_pleasant_string #return the user details with pattern
    "#{id}. #{name} #{email} #{password}"
  end
end
