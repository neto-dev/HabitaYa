class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.references :publication, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :images, :publications
    add_foreign_key :publications, :users
  end
end
