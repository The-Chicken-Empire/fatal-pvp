#mp減少
scoreboard players operation @s mp -= @s mpcost
#tag付与
execute rotated as @s run summon marker ^ ^ ^-2 {Tags:["tmp"]}
summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,Tags:["splashbomb"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:sea_lantern",count:1,components:{"minecraft:enchantment_glint_override":true}}}}
execute anchored eyes as @e[tag=splashbomb,sort=nearest,limit=1] run tp @s ^ ^ ^ ~ ~
scoreboard players operation @e[tag=splashbomb,sort=nearest,limit=1] owner = @s playerdata
scoreboard players operation @e[tag=splashbomb,sort=nearest,limit=1] ownerteam = @s teamscore
tag @s add owner
#投擲方向指定
execute as @e[tag=tmp,sort=nearest] store result score @s X run data get entity @s Pos[0] 1000
execute as @e[tag=tmp,sort=nearest] store result score @s Y run data get entity @s Pos[1] 1000
execute as @e[tag=tmp,sort=nearest] store result score @s Z run data get entity @s Pos[2] 1000
execute store result score @s X run data get entity @s Pos[0] 1000
execute store result score @s Y run data get entity @s Pos[1] 1000
execute store result score @s Z run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=tmp,sort=nearest,limit=1] X -= @s X
scoreboard players operation @e[tag=tmp,sort=nearest,limit=1] Y -= @s Y
scoreboard players operation @e[tag=tmp,sort=nearest,limit=1] Z -= @s Z
execute store result entity @e[tag=splashbomb,sort=nearest,limit=1] Motion[0] double -0.0015 run scoreboard players get @e[tag=tmp,sort=nearest,limit=1] X
execute store result entity @e[tag=splashbomb,sort=nearest,limit=1] Motion[1] double -0.0015 run scoreboard players get @e[tag=tmp,sort=nearest,limit=1] Y
execute store result entity @e[tag=splashbomb,sort=nearest,limit=1] Motion[2] double -0.0015 run scoreboard players get @e[tag=tmp,sort=nearest,limit=1] Z
#dummy削除
kill @e[tag=tmp]
#投擲音
playsound entity.snowball.throw master @a ~ ~ ~ 1 1 0
#ct
#execute store result storage example: tmp.cooltime int 1 run function ct:keisan
function system:cooltime/general/set_ct_mainhand {cooltime:200}
