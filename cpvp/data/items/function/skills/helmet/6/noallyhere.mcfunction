tag @s remove helm6tmp
tellraw @a [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"最早我が身独つ残るのみ...されども血に濡れた道を突き貫かん。",color:"dark_red",bold:true}]
function effects:system/modify/ {id:"30",duration:72000,level:1}
playsound minecraft:entity.skeleton_horse.death neutral @a ~ ~ ~ 10 0 1