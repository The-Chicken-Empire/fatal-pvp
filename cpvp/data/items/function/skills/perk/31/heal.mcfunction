#体力を最大値の50%だけ回復
execute store result score $heal main run scoreboard players get @s maxhp
scoreboard players operation $heal main /= $2 main
scoreboard players operation @s hp = $heal main
scoreboard players set $heal main 0

#
tellraw @a [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"「死んでなるものか、この道を拓くまで...！」",color:"red"}]

#穢血を1得る
scoreboard players set @s tarnished_blood_stage 1
function effects:system/gain/ {id:28,duration:300,level:1}
execute at @s run playsound minecraft:block.leaf_litter.break block @s ~ ~ ~ 1 0


tag @s remove perk31.skillact
