crumb :root do
  link "Home", root_path
end

#ルート
crumb :root do
  link "トップページ", root_path
end
#マイページ
crumb :show do
  link "マイページ", post_path(current_user.id)
end

#クレカ
crumb :cards do 
  link "クレジットカード登録", new_card_path
  parent :show
end

#ログアウト
crumb :logout do
  link "ログアウト画面", posts_logout_path
  parent :show
end

#お気に入り
crumb :okiniiri do
  link "お気に入り一覧", user_path
  parent :show
end