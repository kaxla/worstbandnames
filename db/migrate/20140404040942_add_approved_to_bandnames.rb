class AddApprovedToBandnames < ActiveRecord::Migration
  def change
    add_column :bandnames, :approved, :boolean
  end
end
