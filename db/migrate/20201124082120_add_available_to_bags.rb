class AddAvailableToBags < ActiveRecord::Migration[6.0]
  def change
    add_column :bags, :available, :boolean
  end
end
