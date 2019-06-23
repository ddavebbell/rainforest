class Reviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :product, index: true

      t.string :name
      t.string :text
    end
  end
end
