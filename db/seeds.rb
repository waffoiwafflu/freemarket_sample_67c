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
