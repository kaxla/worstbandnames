class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :bandname_id

      t.timestamps
    end
  end
end
