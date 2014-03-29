class CreateBandnames < ActiveRecord::Migration
  def change
    create_table :bandnames do |t|

      t.timestamps
    end
  end
end
