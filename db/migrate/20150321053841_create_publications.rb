class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :type_add
      t.string :type_property
      t.integer :size
      t.integer :price
      t.string :rooms
      t.string :bathrooms
      t.string :old
      t.string :floors
      t.string :floor_loc
      t.integer :garage
      t.integer :closets
      t.text :description
      t.string :date
      t.string :status
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :publications, :users
  end
end
