class CreateInterns < ActiveRecord::Migration[5.1]
  def change
    create_table :interns do |t|
      t.string :title
      t.string :username
      t.string :prname
      t.text :prm

      t.timestamps
    end
  end
end
