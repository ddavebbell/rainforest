class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price_in_cents
      t.text :pic_url
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
