class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :avatar, :string
    add_column :users, :phone, :string
    add_column :users, :celphone, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :estate, :string
    add_column :users, :postal, :integer
    add_column :users, :web, :string
    add_column :users, :date, :string
    add_column :users, :role, :string
    add_column :users, :updated, :integer, :default => 0
  end
end
