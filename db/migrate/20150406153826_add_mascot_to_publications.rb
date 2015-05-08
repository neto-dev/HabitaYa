class AddMascotToPublications < ActiveRecord::Migration
  def change
    add_column :publications, :mascot, :integer
    add_column :publications, :furnished, :integer
    add_column :publications, :kitchen, :integer
    add_column :publications, :internet, :integer
  end
end
