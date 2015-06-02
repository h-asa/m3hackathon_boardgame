class CreateGameMsts < ActiveRecord::Migration
  def change
    create_table :game_msts do |t|
      t.integer :game_id
      t.timestamps null: false
    end
  end
end
