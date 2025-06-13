#事前
scoreboard players set @s handgun 0
#mp減少
scoreboard players operation @s mp -= @s mpcost
#基礎値↓
data modify storage tmp gundata set from entity @s SelectedItem.components."minecraft:custom_data"
data modify storage tmp gundata.cpvp merge from storage tmp bullet
data modify storage tmp gundata.cpvp.bullets set value 1b
item modify entity @s weapon.mainhand items:gundata
#item replace
setblock 0 250 0 minecraft:shulker_box{lock:{items:"barrier",count:1}} replace
item replace block 0 250 0 container.0 from entity @s weapon.mainhand
data modify block 0 250 0 Items.[0].components."minecraft:custom_data" set from storage tmp gundata
item replace entity @s weapon.mainhand from block 0 250 0 container.0
setblock 0 250 0 air replace

#弾数 銃によって変わる
scoreboard players set @s handgun 8
#弾数増加パークとか作るならここに差し込んでね

#弾種をstorageに保存
function items:skills/bullet/bulletcheck
#銃種をstorageに保存
data modify storage name gun set value {"bold":true,"color":"white","italic":false,"text":"ハンドガン"}
#こっからはitem modifyでどうにかする
item modify entity @s weapon.mainhand items:gunname
#音
execute at @s run playsound block.shulker_box.close player @s ~ ~ ~ 1 2 0
#reset
data remove storage name gun
data remove storage name bullet
data remove storage tmp bullet
data remove storage tmp gundata
scoreboard players reset @s mpcost
scoreboard players reset $dummy bulletcheck


#はよちぇっくしろ