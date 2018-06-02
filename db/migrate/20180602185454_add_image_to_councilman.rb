class AddImageToCouncilman < ActiveRecord::Migration[5.2]
  def change
    add_column :councilmen, :image, :string
  end
end
