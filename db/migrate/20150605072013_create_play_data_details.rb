class CreatePlayDataDetails < ActiveRecord::Migration
  def change
    #ゲームを遊んだ時の１人１人の情報
    create_table :play_data_details do |t|
      t.integer  :play_data_main_id  #遊んだゲームの元と紐づけ
      t.integer  :user_id            #プレイヤーと紐づけ
      t.string   :play_score         #点数（但し、色々なパターンがあるので、文字入力OKにしようと思います
      t.string   :play_winner        #true,false 勝ち負けそのもの。入力者に入力させる。モノによってはscoreから自動判別させる
      t.string   :play_comments      #個人のプレイの感想入力
      t.timestamps null: false
    end
  end
end
