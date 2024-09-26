class CreateStats < ActiveRecord::Migration[7.1]
  def change
    create_table :stats do |t|
      t.integer :total_points
      t.integer :minutes_played

      t.timestamps
    end
  end
end
