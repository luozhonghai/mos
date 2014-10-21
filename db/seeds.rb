# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create([
  {name: 'ソーセージフォカッチャ バーベキューソース', 
   price: 390, 
   description: '直火で焼いた馬蹄形ソーセージと、トマトの甘酸っぱさを活かしたバーベキューソース、千切りキャベツをフォカッチャではさみました。'
   },
  {name: '海老カツフォカッチャ 蟹のスイートチリソース', 
   price: 420, 
   description: 'シンガポール料理「チリクラブ」をイメージして、紅ずわい蟹のほぐし身などを加えた贅沢なチリソース、ぷりっぷりの海老カツをフォカッチャではさみました。'
   },
  {name: 'ごちそうサラダ「ハーブチキンとにんじん」ライ麦パン付き（さっぱり和風ドレッシング', 
   price: 420, 
   description: 'にんじんとキャベツに、ハーブで下味をつけたローストチキンとミニトマトをトッピングしました。香ばしいくるみ入りのライ麦パンと一緒にお楽しみいただけます。'
   }
])