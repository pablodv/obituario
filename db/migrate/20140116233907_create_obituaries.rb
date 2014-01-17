class CreateObituaries < ActiveRecord::Migration
  def change
    create_table :obituaries do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.date :died_at
      t.integer :age
      t.string :worship
      t.string :sex
      t.text :message
      t.integer :user_id

      t.timestamps
    end
  end
end
