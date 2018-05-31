class AddBeingToSessionCouncilmen < ActiveRecord::Migration[5.2]
  def change
    add_column :session_councilmen, :being, :integer
  end
end
