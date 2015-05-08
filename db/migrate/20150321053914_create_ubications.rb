class CreateUbications < ActiveRecord::Migration
  def change
    create_table :ubications do |t|
      t.string :country
      t.string :city
      t.string :town
      t.string :street
      t.integer :number_out
      t.integer :number_in
      t.string :colony
      t.integer :postal
      t.references :publication, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :ubications, :publications
    add_foreign_key :publications, :users
  end
end
