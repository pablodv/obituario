class CreateCondolences < ActiveRecord::Migration
  def change
    create_table :condolences do |t|
      t.integer :user_id
      t.integer :obituary_id
      t.text :body
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
