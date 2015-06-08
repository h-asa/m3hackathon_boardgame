class CreateGameMsts < ActiveRecord::Migration
  def change
    #ゲーム自体のデータ
    create_table :game_msts do |t|
      t.string   :name_japanese #日本語名
      t.string   :name_english  #英語名（ドイツ語名どうしよう？
      t.string   :author        #作者（geekとかと連動出来れば自動取得できるんで、最初は入力方法要らないかも
      t.string   :win_type      #ゲームの解決方法、これによりゲームのスコア入力方法を制御、殆どはスコアの数字入力＋勝ち負けのONOFFボタン
      t.string   :geek_id       #https://boardgamegeek.com/ のゲームのID
      t.string   :pgdb_id       #http://www.gamers-jp.com/playgame/db_lista.php のゲームのID
      t.timestamps null: false
    end
  end
end
