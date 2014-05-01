class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :title
      t.text :summary
      t.text :description
      t.decimal :price, precision: 12, scale: 2
      t.string :kind

      t.timestamps
    end
  end
end
