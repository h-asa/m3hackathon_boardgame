class CreatePlayDataMains < ActiveRecord::Migration
  def change
    create_table :play_data_mains do |t|
      t.integer    :game_id
      t.datetime   :play_datetime
      t.timestamps null: false
    end
  end
end
