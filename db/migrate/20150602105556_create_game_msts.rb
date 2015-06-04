class CreateGameMsts < ActiveRecord::Migration
  def change
    create_table :game_msts do |t|
      t.string   :name_japanese
      t.string   :name_english
      t.string   :author
      t.string   :win_type
      t.string   :geek_id
      t.string   :pgdb_id
      t.timestamps null: false
    end
  end
end
