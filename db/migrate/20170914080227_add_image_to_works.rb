class AddImageToWorks < ActiveRecord::Migration[5.1]
  def change
    add_column :works, :image, :string
  end
end
