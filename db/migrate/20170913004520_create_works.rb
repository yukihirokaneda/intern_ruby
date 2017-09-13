class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :title
      t.string :username
      t.string :prname
      t.text :prm
      t.string :mail
      t.datetime :cre
      t.datetime :upd
      t.integer :age
      t.integer :gent

      t.timestamps
    end
  end
end
