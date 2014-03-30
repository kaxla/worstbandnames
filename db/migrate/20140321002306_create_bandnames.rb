class CreateBandnames < ActiveRecord::Migration
  def change
    create_table :bandnames do |t|
      t.string :name
      t.string :submitter

      t.timestamps
    end
  end
end
