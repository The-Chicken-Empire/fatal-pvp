#特殊バフ時のスキル分岐
function effects:system/pick/ {id:30}
execute store result score $tmp tmp run data get storage effect: targeteffect.level
execute unless score $tmp tmp matches 1.. run return run scoreboard players reset $tmp tmp
scoreboard players reset $tmp tmp

#回復
execute store result score $heal main run scoreboard players get @s maxhp
scoreboard players operation $heal main *= $2 main
scoreboard players operation $heal main /= $10 main
function api:heal/

#チャット
execute store result score $tmp tmp run random value 0..2
execute if score $tmp tmp matches 0 run tellraw @s [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"道が血に濡れども、その果ての理想を信じ。",color:"red"}]
execute if score $tmp tmp matches 1 run tellraw @s [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"我が下部の犠牲が積み重なり、幾多もの屍を超え...",color:"red"}]
execute if score $tmp tmp matches 2 run tellraw @s [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"果てに我が命尽くども、此れを完遂せん。",color:"red"}]
scoreboard players reset $tmp tmp