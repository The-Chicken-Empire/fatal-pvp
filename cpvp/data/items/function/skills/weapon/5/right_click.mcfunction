#特殊バフ時のスキル分岐
function effects:system/pick/ {id:30}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute if score $tmp tmp matches 1.. run tag @s add lonelord
scoreboard players reset $tmp tmp
#mp減少量設定
scoreboard players set @s mpcost 1400
scoreboard players set @s[tag=lonelord] mpcost 1200
#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"} store result score $check main run function items:skills/allcheck
#スキル実行
execute if entity @s[tag=!lonelord] if score $check main matches 1.. run function items:skills/weapon/5/active
execute if entity @s[tag=lonelord] if score $check main matches 1.. run function items:skills/weapon/5/active2
#分岐用タグ削除
tag @s remove lonelord
#使用後処理
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
scoreboard players reset @s mpcost
