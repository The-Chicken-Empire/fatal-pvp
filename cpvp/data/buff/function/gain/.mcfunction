



#例のバフをすでに持ってるなら情報を確認する
function buff:check/ with storage buff: gain

#持ってた時の処理
execute if data storage buff: check unless data storage buff: {gain:{unreplacable:1b}} run function buff:gain/uwagaki with storage buff: gain
#持ってなかった時の処理
execute unless data storage buff: check run function buff:gain/main