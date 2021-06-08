class Todo < ActiveRecord::Base
  belongs_to :user

  #found overdue todos
  def self.overdue
    where("due_date < ?  and (not completed)", Date.today).order(:due_date)
  end

  #found today due todos
  def self.due_today
    where("due_date = ?", Date.today).order(:id)
  end

  #found which todos have a days
  def self.due_later
    where("due_date > ?", Date.today).order(:due_date)
  end

  def self.completed
    all.where(completed: true)
  end
end
