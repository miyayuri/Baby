# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Adminの初期設定
Admin.find_or_create_by(id: 1) do |admin|
    admin.email = 'yurikomiyamoto819@gmail.com'
    admin.password = '08190819'
  end

# 都道府県の登録
Prefecture.find_or_create_by(id: 1) do |prefecture|
  prefecture.name = "北海道"
end
Prefecture.find_or_create_by(id: 2) do |prefecture|
  prefecture.name = "青森県"
end
Prefecture.find_or_create_by(id: 3) do |prefecture|
  prefecture.name = "岩手県"
end
Prefecture.find_or_create_by(id: 4) do |prefecture|
  prefecture.name = "宮城県"
end
Prefecture.find_or_create_by(id: 5) do |prefecture|
  prefecture.name = "秋田県"
end
Prefecture.find_or_create_by(id: 6) do |prefecture|
  prefecture.name = "山形県"
end
Prefecture.find_or_create_by(id: 7) do |prefecture|
  prefecture.name = "福島県"
end
Prefecture.find_or_create_by(id: 8) do |prefecture|
  prefecture.name = "茨城県"
end
Prefecture.find_or_create_by(id: 9) do |prefecture|
  prefecture.name = "栃木県"
end
Prefecture.find_or_create_by(id: 10) do |prefecture|
  prefecture.name = "群馬県"
end
Prefecture.find_or_create_by(id: 11) do |prefecture|
  prefecture.name = "埼玉県"
end
Prefecture.find_or_create_by(id: 12) do |prefecture|
  prefecture.name = "千葉県"
end
Prefecture.find_or_create_by(id: 13) do |prefecture|
  prefecture.name = "東京都"
end
Prefecture.find_or_create_by(id: 14) do |prefecture|
  prefecture.name = "神奈川県"
end
Prefecture.find_or_create_by(id: 15) do |prefecture|
  prefecture.name = "山梨県"
end
Prefecture.find_or_create_by(id: 16) do |prefecture|
  prefecture.name = "長野県"
end
Prefecture.find_or_create_by(id: 17) do |prefecture|
  prefecture.name = "静岡県"
end
Prefecture.find_or_create_by(id: 18) do |prefecture|
  prefecture.name = "新潟県"
end
Prefecture.find_or_create_by(id: 19) do |prefecture|
  prefecture.name = "富山県"
end
Prefecture.find_or_create_by(id: 20) do |prefecture|
  prefecture.name = "石川県"
end
Prefecture.find_or_create_by(id: 21) do |prefecture|
  prefecture.name = "福井県"
end
Prefecture.find_or_create_by(id: 22) do |prefecture|
  prefecture.name = "岐阜県"
end
Prefecture.find_or_create_by(id: 23) do |prefecture|
  prefecture.name = "愛知県"
end
Prefecture.find_or_create_by(id: 24) do |prefecture|
  prefecture.name = "三重県"
end
Prefecture.find_or_create_by(id: 25) do |prefecture|
  prefecture.name = "滋賀県"
end
Prefecture.find_or_create_by(id: 26) do |prefecture|
  prefecture.name = "京都府"
end
Prefecture.find_or_create_by(id: 27) do |prefecture|
  prefecture.name = "大阪府"
end
Prefecture.find_or_create_by(id: 28) do |prefecture|
  prefecture.name = "兵庫県"
end
Prefecture.find_or_create_by(id: 29) do |prefecture|
  prefecture.name = "奈良県"
end
Prefecture.find_or_create_by(id: 30) do |prefecture|
  prefecture.name = "和歌山県"
end
Prefecture.find_or_create_by(id: 31) do |prefecture|
  prefecture.name = "鳥取県"
end
Prefecture.find_or_create_by(id: 32) do |prefecture|
  prefecture.name = "島根県"
end
Prefecture.find_or_create_by(id: 33) do |prefecture|
  prefecture.name = "岡山県"
end
Prefecture.find_or_create_by(id: 34) do |prefecture|
  prefecture.name = "広島県"
end
Prefecture.find_or_create_by(id: 35) do |prefecture|
  prefecture.name = "山口県"
end
Prefecture.find_or_create_by(id: 36) do |prefecture|
  prefecture.name = "徳島県"
end
Prefecture.find_or_create_by(id: 37) do |prefecture|
  prefecture.name = "香川県"
end
Prefecture.find_or_create_by(id: 38) do |prefecture|
  prefecture.name = "愛媛県"
end
Prefecture.find_or_create_by(id: 39) do |prefecture|
  prefecture.name = "高知県"
end
Prefecture.find_or_create_by(id: 40) do |prefecture|
  prefecture.name = "福岡県"
end
Prefecture.find_or_create_by(id: 41) do |prefecture|
  prefecture.name = "佐賀県"
end
Prefecture.find_or_create_by(id: 42) do |prefecture|
  prefecture.name = "長崎県"
end
Prefecture.find_or_create_by(id: 43) do |prefecture|
  prefecture.name = "熊本県"
end
Prefecture.find_or_create_by(id: 44) do |prefecture|
  prefecture.name = "大分県"
end
Prefecture.find_or_create_by(id: 45) do |prefecture|
  prefecture.name = "宮崎県"
end
Prefecture.find_or_create_by(id: 46) do |prefecture|
  prefecture.name = "鹿児島県"
end
Prefecture.find_or_create_by(id: 47) do |prefecture|
  prefecture.name = "沖縄県"
end

#  妊娠期間の登録
Period.find_or_create_by(id: 1) do |period|
  period.name = "1ヶ月目"
end
Period.find_or_create_by(id: 2) do |period|
  period.name = "2ヶ月目"
end
Period.find_or_create_by(id: 3) do |period|
  period.name = "3ヶ月目"
end
Period.find_or_create_by(id: 4) do |period|
  period.name = "4ヶ月目"
end
Period.find_or_create_by(id: 5) do |period|
  period.name = "5ヶ月目"
end
Period.find_or_create_by(id: 6) do |period|
  period.name = "6ヶ月目"
end
Period.find_or_create_by(id: 7) do |period|
  period.name = "7ヶ月目"
end
Period.find_or_create_by(id: 8) do |period|
  period.name = "8ヶ月目"
end
Period.find_or_create_by(id: 9) do |period|
  period.name = "9ヶ月目"
end
Period.find_or_create_by(id: 10) do |period|
  period.name = "10ヶ月目"
end
