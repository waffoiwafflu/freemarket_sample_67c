# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lady = Category.create(:name=>"レディース")

lady_tops = lady.children.create(:name=>"トップス")
lady_jackets = lady.children.create(:name=>"ジャケット/アウター")
lady_pants = lady.children.create(:name=>"パンツ")
lady_skirts = lady.children.create(:name=>"スカート")
lady_dress = lady.children.create(:name=>"ワンピース")
lady_shoes = lady.children.create(:name=>"靴")
lady_pajamas = lady.children.create(:name=>"ルームウェア/パジャマ")
lady_legwears = lady.children.create(:name=>"レッグウェア")
lady_hats = lady.children.create(:name=>"帽子")
lady_bags = lady.children.create(:name=>"バッグ")
lady_accessories = lady.children.create(:name=>"アクセサリー")
lady_heir_accessories = lady.children.create(:name=>"ヘアアクセサリー")
lady_small_articles = lady.children.create(:name=>"小物")
lady_clocks = lady.children.create(:name=>"時計")
lady_etc = lady.children.create(:name=>"その他")

lady_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"},{:name=>"シャツ/ブラウス（半袖/袖なし"},{:name=>"シャツ/ブラウス（七分/長袖"},{:name=>"ポロシャツ"},{:name=>"キャミソール"},{:name=>"タンクトップ"},{:name=>"ホルターネック"},
                           {:name=>"ニット/セーター"},{:name=>"チュニック"},{:name=>"カーディガン/ボレロ"},{:name=>"アンサンブル"},{:name=>"ベスト/ジレ"},{:name=>"パーカー"},{:name=>"トレーナー/スウェット"},{:name=>"ペアトップ/チューブトップ"},{:name=>"ジャージ"},{:name=>"その他"}])
lady_jackets.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"},{:name=>"ダウンジャヶット"},{:name=>"ジャンパー"},{:name=>"ロングコート"},{:name=>"トレンチコート"},{:name=>"ダッフルコート"},{:name=>"毛皮/ファーコート"},{:name=>"その他"}])
lady_pants.children.create([{:name=>"ショートパンツ"},{:name=>"ハーフパンツ"},{:name=>"ワークパンツ/カーゴパンツ"},{:name=>"サロペット/オーバーオール"},{:name=>"サルエルパンツ"},{:name=>"デニム/ジーンズ"},{:name=>"カジュアルパンツ"},{:name=>"チノパン"},{:name=>"クロップドパンツ"},
                            {:name=>"オールインワン"},{:name=>"ガウチョパンツ"},{:name=>"その他"}])
lady_skirts.children.create([{:name=>"ニット/セーター"},{:name=>"ミニスカート"},{:name=>"ひざ丈スカート"},{:name=>"ロングワンピース"},{:name=>"その他"}])
lady_dress.children.create([{:name=>"ひざ丈ワンピース"},{:name=>"ミニワンピース"},{:name=>"ロングワンピース"},{:name=>"その他"},])
lady_shoes.children.create([{:name=>"ハイヒール/パンプス"},{:name=>"ブーツ"},{:name=>"サンダル"},{:name=>"スニーカー"},{:name=>"ミュール"},{:name=>"モカシン"},{:name=>"ローファー/革靴"},{:name=>"フラットシューズ/バレエシューズ"},{:name=>"長靴/レインシューズ"},{:name=>"その他"}])
lady_pajamas.children.create([{:name=>"パジャマ"},{:name=>"ルームウェア"},{:name=>"その他"}])
lady_legwears.children.create([{:name=>"ソックス"},{:name=>"スパッツ/レギンス"},{:name=>"ストッキング/タイツ"},{:name=>"レッグウォーマー"},{:name=>"その他"}])
lady_hats.children.create([{:name=>"ニットキャップ/ビーニー"},{:name=>"ハット"},{:name=>"ハンチング/ベレー帽"},{:name=>"キャップ"},{:name=>"キャスケット"},{:name=>"麦わら帽子"},{:name=>"その他"}])
lady_bags.children.create([{:name=>"ハンドバッグ"},{:name=>"トートバッグ"},{:name=>"エコバッグ"},{:name=>"リュック/バックパック"},{:name=>"ボストンバッグ"},{:name=>"スポーツバッグ"},{:name=>"ショルダーバッグ"},{:name=>"クラッチバッグ"},{:name=>"ポーチ/バニティ"},{:name=>"ボディバッグ/ウェストバッグ"},
                           {:name=>"マザーズバッグ"},{:name=>"メッセンジャーバッグ"},{:name=>"ビジネスバッグ"},{:name=>"旅行用バッグ/キャリーバッグ"},{:name=>"ショップ袋"},{:name=>"和装用バッグ"},{:name=>"かごバッグ"},{:name=>"その他"}])
lady_accessories.children.create([{:name=>"ネックレス"},{:name=>"ブレスレット"},{:name=>"バングル/リストバンド"},{:name=>"リング"},{:name=>"ピアス"},{:name=>"イヤリング"},{:name=>"アンクレット"},{:name=>"ブローチ"},{:name=>"チャーム"},{:name=>"その他"}])
lady_heir_accessories.children.create([{:name=>"シュシュ"},{:name=>"カチューシャ"},{:name=>"ヘアピン"},{:name=>"その他"}])
lady_small_articles.children.create([{:name=>"財布"},{:name=>"定期入れ"},{:name=>"キーケース"},{:name=>"手袋"},{:name=>"ハンカチ"},{:name=>"ベルト"},{:name=>"マフラー"},{:name=>"眼鏡"},{:name=>"手帳"},{:name=>"傘"},{:name=>"ミラー"},{:name=>"タバコ"},{:name=>"その他"}])
lady_clocks.children.create([{:name=>"腕時計"},{:name=>"アナログ"},{:name=>"デジタル"},{:name=>"その他"}])
lady_etc.children.create([{:name=>"コスプレ"},{:name=>"下着"},{:name=>"その他"}])


man = Category.create(:name=>"メンズ")

man_tops = man.children.create(:name=>"トップス")
man_jackets = man.children.create(:name=>"ジャケット/アウター")
man_pants = man.children.create(:name=>"パンツ")
man_shoes = man.children.create(:name=>"靴")
man_hats = man.children.create(:name=>"帽子")
man_bags = man.children.create(:name=>"バッグ")
man_accessories = man.children.create(:name=>"アクセサリー")
man_small_articles = man.children.create(:name=>"小物")
man_clocks = man.children.create(:name=>"時計")
man_etc = man.children.create(:name=>"その他")

man_tops.children.create([{:name=>"Tシャツ/カットソー"}, {:name=>"シャツ"},{:name=>"ポロシャツ"},{:name=>"タンクトップ"},
                          {:name=>"ニット/セーター"},{:name=>"パーカー"},{:name=>"カーディガン"},{:name=>"スウェット"},{:name=>"ジャージ"},{:name=>"ベスト"},{:name=>"その他"}])
man_jackets.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"},{:name=>"ダウンジャヶット"},{:name=>"ジャンパー"},{:name=>"ピーコート"},{:name=>"トレンチコート"},{:name=>"ダッフルコート"},{:name=>"毛皮/ファーコート"},{:name=>"その他"}])
man_pants.children.create([{:name=>"ワークパンツ/カーゴパンツ"},{:name=>"デニム/ジーンズ"},{:name=>"スラックス"},{:name=>"チノパン"},{:name=>"ショートパンツ"},{:name=>"サルエルパンツ"},{:name=>"その他"}])
man_shoes.children.create([{:name=>"スニーカー"},{:name=>"サンダル"},{:name=>"ブーツ"},{:name=>"モカシン"},{:name=>"ビジネス"},{:name=>"革靴"},{:name=>"その他"}])
man_hats.children.create([{:name=>"キャップ"},{:name=>"ハット"},{:name=>"ニットキャップ"},{:name=>"ベレー帽"},{:name=>"サンバイザー"},{:name=>"その他"}])
man_accessories.children.create([{:name=>"ネックレス"},{:name=>"ブレスレット"},{:name=>"バングル/リストバンド"},{:name=>"リング"},{:name=>"ピアス"},{:name=>"アンクレット"},{:name=>"その他"}])
man_small_articles.children.create([{:name=>"財布"},{:name=>"定期入れ"},{:name=>"キーケース"},{:name=>"手袋"},{:name=>"ハンカチ"},{:name=>"ベルト"},{:name=>"マフラー"},{:name=>"眼鏡"},{:name=>"手帳"},{:name=>"傘"},{:name=>"ミラー"},{:name=>"タバコ"},{:name=>"その他"}])
man_clocks.children.create([{:name=>"腕時計"},{:name=>"アナログ"},{:name=>"デジタル"},{:name=>"その他"}])
man_bags.children.create([{:name=>"ショルダーバッグ"},{:name=>"トートバッグ"},{:name=>"エコバッグ"},{:name=>"リュック/バックパック"},{:name=>"ボストンバッグ"},{:name=>"メッセンジャーバッグ"},{:name=>"ビジネスバッグ"},{:name=>"その他"}])
man_etc.children.create([{:name=>"コスプレ"},{:name=>"下着"},{:name=>"その他"}])


kids = Category.create(:name=>"キッズ")

kids_girl = kids.children.create(:name=>"女の子用")
kids_boy = kids.children.create(:name=>"男の子用")
kids_shoes = kids.children.create(:name=>"靴")
kids_accessories = kids.children.create(:name=>"小物")
kids_movement = kids.children.create(:name=>"外出/移動用品")
kids_toy = kids.children.create(:name=>"おもちゃ")
kids_etc = kids.children.create(:name=>"その他")

kids_girl.children.create([{:name=>"トップス"}, {:name=>"アウター"},{:name=>"パンツ"},{:name=>"スカート"},
                           {:name=>"ワンピース"},{:name=>"ベビードレス"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}])
kids_boy.children.create([{:name=>"トップス"}, {:name=>"アウター"},{:name=>"パンツ"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}])
kids_shoes.children.create([{:name=>"スニーカー"}, {:name=>"サンダル"},{:name=>"ブーツ"},{:name=>"長靴"},{:name=>"その他"}])
kids_accessories.children.create([{:name=>"トップス"}, {:name=>"アウター"},{:name=>"パンツ"},{:name=>"スカート"},
                                 {:name=>"ワンピース"},{:name=>"ベビードレス"},{:name=>"おくるみ"},{:name=>"下着/肌着"},{:name=>"パジャマ"},{:name=>"ロンパース"},{:name=>"その他"}])