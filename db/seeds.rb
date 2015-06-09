# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

GameMst.create([
  { name_japanese: 'カタンの開拓者たち' , name_english: 'Die Siedler von Catan' , author: 'クラウス・トイバー' , win_type: 'input_score' },
  { name_japanese: 'カルカソンヌ' , name_english: 'Carcassonne' , author: 'ヴレーデ・クラウス・ユルゲン' , win_type: 'input_score' },
  { name_japanese: 'パンデミック' , name_english: 'Pandemic' , author: 'マット・リーコック' , win_type: 'all_win_lose' }
])