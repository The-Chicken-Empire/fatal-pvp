#殺した人取り出し
#execute if entity @a[tag=atker,limit=1] as @a[tag=atker,limit=1] run function system:kill
#関連mob消去
tag @s add death
##固有item
#magic32
execute if entity @s[tag=magic32dashing] run function items:skills/magic/32/deactive

#関節キル取り出し
tag @s add tmpdied
execute if score @s attacker matches 0.. as @a if score @s playerdata = @a[tag=tmpdied,limit=1] attacker run function system:kill

#killlog
function system:killlog/check1

scoreboard players set @s afterdamage -1
scoreboard players set @s attacker -1
tag @s remove tmpdied
#ゲーム中か
execute as @s[tag=player,tag=alive] if score $phase main matches 3 run function system:eliminate
#汎用処理
title @s title {"bold":true,"color":"white","text":"You died!"}
execute at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1 0.8 1
scoreboard players operation @s hp = @s maxhp
scoreboard players operation @s mp = @s maxmp

#プレイヤーにプレイヤー死亡回数(playerdeathcount)を1加算
scoreboard players add @a playerdeathcount 1

#味方プレイヤーに味方死亡回数(allydeathcount)を1加算
tag @s add deathcounttmp
execute as @a[tag=!deathcounttmp] if score @a[tag=deathcounttmp,limit=1] teamscore = @s teamscore run function system:allydeath
tag @s remove deathcounttmp
