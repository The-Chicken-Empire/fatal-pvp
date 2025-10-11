kill @e[tag=perk31.mk1.tmp]
tag @s remove perk31.skillacting
tag @s add perk31.truedeath
function effects:remove {id:28}
tag @s remove perk31.truedeath
attribute @s gravity base reset
attribute @s minecraft:camera_distance base reset
execute at @s run particle dust{color:[1.0,0.90,0.90],scale:3} ~ ~1 ~ 1 1 1 1 100 force
execute at @s run playsound minecraft:item.totem.use player @a ~ ~ ~ 20 0
# tellraw @a [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"「春如く、花の如く...我が命も、潔く散る物なり。」",color:"red"}]
scoreboard players reset @s tarnished_blood_stage

function system:death