


execute unless data storage buff: gain.id run tellraw @a [{"color":"red","text":"idが設定されていません!!"}]

#例のバフをすでに持ってるなら情報を確認する
execute if data storage buff: gain.id run function buff:check/ with storage buff: gain

#持ってた時の処理
execute if data storage buff: gain.id if data storage buff: check unless data storage buff: gain.unreplacable run function buff:gain/uwagaki with storage buff: gain
#持ってなかった時の処理
execute if data storage buff: gain.id unless data storage buff: check run function buff:gain/main