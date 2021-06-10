class AlterUsers < ActiveRecord::Migration[6.1]
  def change
    #Rename the existing columns
    rename_column :users, :name, :first_name
    rename_column :users, :password, :password_digest

    #Add a new column
    add_column :users, :last_name, :string
  end
end
