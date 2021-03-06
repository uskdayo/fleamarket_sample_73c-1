# Brand
Brand.create(name: "SugarDream")
Brand.create(name: "Gibson")
Brand.create(name: "Fender")
Brand.create(name: "Martin")
Brand.create(name: "Apple")
Brand.create(name: "LG")
Brand.create(name: "Daikin")
Brand.create(name: "Panasonic")
Brand.create(name: "Sharp")
Brand.create(name: "東芝")
Brand.create(name: "NEC")
Brand.create(name: "ユニクロ")
Brand.create(name: "Coen")
Brand.create(name: "Pilot")
Brand.create(name: "サントリー")
Brand.create(name: "セブン&アイ")
Brand.create(name: "Canon")
Brand.create(name: "ワーナーミュージック・ジャパン")
Brand.create(name: "幻冬舎")

# Category
main1 = Category.create(name: "レディース")
  sub1_1 = main1.children.create(name: "トップス")
    sub1_1_1 = sub1_1.children.create(name: "Tシャツ/カットソー(半袖/袖なし)")
    sub1_1_2 = sub1_1.children.create(name: "Tシャツ/カットソー(七分/長袖)")
    sub1_1_3 = sub1_1.children.create(name: "シャツ/ブラウス(半袖/袖なし)")

  sub1_2 = main1.children.create(name: "ジャケット/アウター")
    sub1_2.children.create(name: "テーラードジャケット")
    sub1_2.children.create(name: "ノーカラージャケット")
    sub1_2.children.create(name: "レザージャケット")

  sub1_3 = main1.children.create(name: "パンツ")
    sub1_3.children.create(name: "デニム/ジーンズ")
    sub1_3.children.create(name: "ショートパンツ")
    sub1_3.children.create(name: "カジュアルパンツ")


main2 = Category.create(name: "インテリア・住まい")
  sub2_1 = main2.children.create(name: "キッチン/食器")
    sub2_1.children.create(name: "食器")
    sub2_1.children.create(name: "調理器具")
    sub2_1.children.create(name: "収納/キッチン雑貨")


  sub2_2 = main2.children.create(name: "ベッド/マットレス")
    sub2_2.children.create(name: "シングルベッド")
    sub2_2.children.create(name: "ダブルベッド")
    sub2_2.children.create(name: "クイーンベッド")


  sub2_3 = main2.children.create(name: "ソファ/ソファベッド")
    sub2_3.children.create(name: "シングルソファ")
    sub2_3.children.create(name: "トリプルソファ")
    sub2_3.children.create(name: "コーナーソファ")


main3 = Category.create(name: "本・音楽・ゲーム")
  sub3_1 = main3.children.create(name: "本")
    sub3_1.children.create(name: "人文/社会")
    sub3_1.children.create(name: "地図/旅行ガイド")
    sub3_1.children.create(name: "健康/医学")

  sub3_2 = main3.children.create(name: "漫画")
    sub3_2.children.create(name: "少年漫画")
    sub3_2.children.create(name: "青年漫画")
    sub3_2.children.create(name: "同人誌")

  sub3_2 = main3.children.create(name: "雑誌")
    sub3_1.children.create(name: "ファッション")
    sub3_1.children.create(name: "趣味/スポーツ")
    sub3_1.children.create(name: "アート/エンタメ/ホビー")

