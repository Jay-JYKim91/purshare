class ChangeBagDefaultAvailable < ActiveRecord::Migration[6.0]
  def change
    change_column_default :bags, :available, true
  end
end
