#弾数減少
scoreboard players remove @s handgun 1
#active
execute anchored eyes run summon marker ^ ^ ^ {Tags:["bullet"]}
scoreboard players operation @e[tag=bullet,type=marker,sort=nearest,limit=1] owner = @s playerdata
scoreboard players operation @e[tag=bullet,type=marker,sort=nearest,limit=1] ownerteam = @s teamscore
#弾丸stats/tag get
function items:skills/bullet/bulletstatsget with entity @s SelectedItem.components."minecraft:custom_data".cpvp
#銃による速度とかの強化を入れる(銃stats/tag get)
tag @e[tag=bullet,type=marker,sort=nearest,limit=1] add gun1
execute as @e[tag=bullet,type=marker,sort=nearest,limit=1] run function items:skills/gun/1/gunstats

#視点方向
#少しズラしたりしてもいいかも
execute at @s anchored eyes run data modify entity @e[tag=bullet,sort=nearest,limit=1] Rotation set from entity @s Rotation

#sound
execute at @s run playsound entity.zombie.attack_wooden_door player @s ~ ~ ~ 1 2 0
#弾数
execute if score @s handgun matches 1.. run function items:skills/gun/1/namechange
execute unless score @s handgun matches 1.. run function items:skills/gun/1/0bullet
#二連とかの場合この後にmarkerとか適当に召喚して適当にやって