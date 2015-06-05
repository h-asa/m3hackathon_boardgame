class CreatePlayDataMains < ActiveRecord::Migration
  def change
    #ゲームプレイ情報（１人１人の詳細はplay_data_detail
    create_table :play_data_mains do |t|
      t.integer    :game_id        #遊んだゲームのId
      t.datetime   :play_datetime  #遊んだ日時
      t.string     :impressions    #遊んだ時の感想（複数人で共有更新）
      t.timestamps null: false
    end
  end
end
