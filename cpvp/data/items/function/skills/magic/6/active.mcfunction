scoreboard players operation @s mp -= @s mpcost
tag @s add magic6player
execute anchored eyes run summon marker ^ ^ ^ {Tags:["skillmarker","magic6"]}
execute as @e[type=marker,tag=magic6,limit=1,sort=nearest,tag=!tagged] run scoreboard players operation @s owner = @a[tag=magic6player,limit=1] playerdata
execute as @e[type=marker,tag=magic6,limit=1,sort=nearest,tag=!tagged] run scoreboard players operation @s ownerteam = @a[tag=magic6player,limit=1] teamscore
execute as @e[type=marker,tag=magic6,limit=1,sort=nearest] run tag @s add tagged

execute at @s anchored eyes run data modify entity @e[tag=skillmarker,tag=magic6,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute as @e[tag=skillmarker,tag=magic6,sort=nearest,limit=1] at @s run tp @s ^ ^ ^10
execute as @e[tag=skillmarker,tag=magic6,sort=nearest,limit=1] at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.3 10 force
execute as @e[tag=magic6,type=marker,tag=skillmarker,limit=1] at @s positioned ~0 ~0 ~0 as @a[tag=!skillmarker,dx=0,gamemode=!spectator] unless score @s teamscore = @e[tag=skillmarker,tag=magic6,limit=1] ownerteam positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add magic6victim
execute as @e[tag=magic6,type=marker,tag=skillmarker,limit=1] at @s positioned ~0 ~0 ~0 as @e[type=#main:non_player,tag=!skillmarker,dx=0] unless score @s ownerteam = @e[tag=skillmarker,tag=magic6,limit=1] ownerteam positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add magic6victim
execute as @e[tag=magic6,type=marker,tag=skillmarker,limit=1] at @s run playsound item.flintandsteel.use block @a ~ ~ ~ 1 1 0
execute at @s run playsound item.flintandsteel.use block @s ~ ~ ~ 1 1 0
execute as @e[tag=magic6victim] run function items:skills/magic/6/hit

tag @s remove magic6player
tag @e remove magic6victim
kill @e[type=marker,tag=magic6,tag=skillmarker,limit=1]
function system:cooltime/general/set_ct_mainhand {cooltime:60}