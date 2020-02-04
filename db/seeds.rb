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
lady_wigs = lady.children.create(:name=>"ウィッグ/エクステ")
lady_yukatas = lady.children.create(:name=>"浴衣/水着")
lady_suites = lady.children.create(:name=>"スーツ/フォーマル/ドレス")
lady_maternities = lady.children.create(:name=>"マタニティ")
lady_etc = lady.children.create(:name=>"その他")





lady_tops.children.create([{:name=>"Tシャツ/カットソー(半袖/袖なし)"}, {:name=>"Tシャツ/カットソー(七分/長袖)"},{:name=>"シャツ/ブラウス（半袖/袖なし"},{:name=>"シャツ/ブラウス（七分/長袖"},{:name=>"ポロシャツ"},{:name=>"キャミソール"},{:name=>"タンクトップ"},{:name=>"ホルターネック"},
                           {:name=>"ニット/セーター"},{:name=>"チュニック"},{:name=>"カーディガン/ボレロ"},{:name=>"アンサンブル"},{:name=>"ベスト/ジレ"},{:name=>"パーカー"},{:name=>"トレーナー/スウェット"},{:name=>"ペアトップ/チューブトップ"},{:name=>"ジャージ"},{:name=>"その他"}])
lady_jackets.children.create([{:name=>"テーラードジャケット"}, {:name=>"ノーカラージャケット"}, {:name=>"Gジャン/デニムジャケット"},{:name=>"その他"}])
lady_pants.children.create([{:name=>"ショートパンツ"},{:name=>"ハーフパンツ"},{:name=>"ワークパンツ/カーゴパンツ"},{:name=>"サロペット/オーバーオール"},{:name=>"サルエルパンツ"},{:name=>"デニム/ジーンズ"},{:name=>"カジュアルパンツ"},{:name=>"チノパン"},{:name=>"クロップドパンツ"},
                            {:name=>"オールインワン"},{:name=>"ガウチョパンツ"},{:name=>"その他"}])
lady_skirts.children.create([{:name=>"ニット/セーター"},{:name=>"ミニスカート"},{:name=>"ひざ丈スカート"},{:name=>"ロングワンピース"},{:name=>"その他"}])
lady_dress.children.create([{:name=>"ひざ丈ワンピース"},{:name=>"ミニワンピース"},{:name=>"ロングワンピース"},{:name=>"その他"},])
lady_shoes.children.create([{:name=>"ハイヒール/パンプス"},{:name=>"ブーツ"},{:name=>"サンダル"},{:name=>"スニーカー"},{:name=>"ミュール"},{:name=>"モカシン"},{:name=>"ローファー/革靴"},{:name=>"フラットシューズ/バレエシューズ"},{:name=>"長靴/レインシューズ"},{:name=>"その他"}])
lady_pajamas.children.create([{:name=>"パジャマ"},{:name=>"ルームウェア"},{:name=>"その他"}])
lady_legwears.children.create([{:name=>"ソックス"},{:name=>"スパッツ/レギンス"},{:name=>"ストッキング/タイツ"},{:name=>"レッグウォーマー"},{:name=>"その他"}])
lady_hats.children.create([{:name=>"ニットキャップ/ビーニー"},{:name=>"ハット"},{:name=>"ハンチング/ベレー帽"},{:name=>"キャップ"},{:name=>"キャスケット"},{:name=>"麦わら帽子"},{:name=>"その他"}])
lady_bags.children.create([{:name=>"ハンドバッグ"},{:name=>"トードバッグ"},{:name=>"エコバッグ"},{:name=>"リュック/バックパック"},{:name=>"ボストンバッグ"},{:name=>"スポーツバッグ"},{:name=>"ショルダーバッグ"},{:name=>"クラッチバッグ"},{:name=>"ポーチ/バニティ"},{:name=>"ボディバッグ/ウェストバッグ"},
                           {:name=>"マザーズバッグ"},{:name=>"メッセンジャーバッグ"},{:name=>"ビジネスバッグ"},{:name=>"旅行用バッグ/キャリーバッグ"},{:name=>"ショップ袋"},{:name=>"和装用バッグ"},{:name=>"かごバッグ"},{:name=>"その他"}}]
