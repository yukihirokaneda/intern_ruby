class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :title
      t.string :username
      t.string :name
      t.text :prmort
      t.string :mail
      t.datetime :create
      t.datetime :update
      t.integer :age

      t.timestamps
    end
  end
end
