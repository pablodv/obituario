class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :from
      t.string :to
      t.string :address
      t.string :po_box
      t.string :zip_code
      t.string :state
      t.string :city
      t.string :between
      t.integer :user_id
      t.integer :product_id
      t.text :body

      t.timestamps
    end
  end
end
