scoreboard players set #flagcounter counter 0
tag @s add perk45target
#直視判定を取る
execute store result score #counter counter4 run attribute @s minecraft:camera_distance get 10
execute anchored eyes positioned ^ ^ ^ run tp 0-0-0-0-0 ~ ~ ~ ~ ~
execute as 0-0-0-0-0 at @s run function items:skills/perk/45/s1/rec
execute as 0-0-0-0-0 at @s run tp @s ~ ~ ~ facing entity @a[tag=perk45this,limit=1] eyes

scoreboard players set #counter counter 4000
execute as 0-0-0-0-0 at @s run function items:skills/perk/45/s1/rec2

execute anchored eyes positioned ^ ^ ^ run tp 0-0-0-0-0 ~ ~ ~ facing entity @a[tag=perk45this,limit=1] eyes
scoreboard players set #counter counter 4000
execute as 0-0-0-0-0 at @s run function items:skills/perk/45/s1/rec2



#視点方向の単位ベクトル
execute rotated as @a positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ^ ^ ^1
execute store result score #counter counter run data get entity 0-0-0-0-0 Pos[0] 1000
execute store result score #counter counter2 run data get entity 0-0-0-0-0 Pos[1] 1000
execute store result score #counter counter3 run data get entity 0-0-0-0-0 Pos[2] 1000
#対象方向の単位ベクトル
execute store result score #counter counter4 run attribute @s minecraft:camera_distance get 10
execute anchored eyes positioned ^ ^ ^ run tp 0-0-0-0-0 ~ ~ ~ ~ ~
execute as 0-0-0-0-0 at @s run function items:skills/perk/45/s1/rec
execute as 0-0-0-0-0 at @s facing entity @a[tag=perk45this,limit=1] eyes positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ^ ^ ^1
execute store result score #counter2 counter run data get entity 0-0-0-0-0 Pos[0] 1000
execute store result score #counter2 counter2 run data get entity 0-0-0-0-0 Pos[1] 1000
execute store result score #counter2 counter3 run data get entity 0-0-0-0-0 Pos[2] 1000
#内積を出す
scoreboard players operation #counter counter *= #counter2 counter
scoreboard players operation #counter counter2 *= #counter2 counter2
scoreboard players operation #counter counter3 *= #counter2 counter3
scoreboard players operation #counter counter += #counter counter2
scoreboard players operation #counter counter += #counter counter3
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if score #counter counter matches ..100000 run scoreboard players reset #flagcounter
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] if score #counter counter matches ..700000 run scoreboard players reset #flagcounter
scoreboard players reset #counter
scoreboard players reset #counter2








execute if score #flagcounter counter matches 1 as @a[tag=perk45this] at @s run function items:skills/perk/45/s1/particle

tag @s remove perk45target
scoreboard players reset #flagcounter




