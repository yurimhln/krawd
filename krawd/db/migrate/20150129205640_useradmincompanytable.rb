class Useradmincompanytable < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_id, :string

    add_column :admins, :first_name, :string
    add_column :admins, :last_name, :string
    add_column :admins, :user_id, :string

     add_column :companies, :company_name, :string
  end
end
