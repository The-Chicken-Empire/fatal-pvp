execute store result score $heal main run scoreboard players get @s maxhp
scoreboard players operation $heal main *= $2 main
scoreboard players operation $heal main /= $10 main
function api:heal/

playsound minecraft:entity.spider.step hostile @s ~ ~ ~ 0.5 0.6
tag @s add helm6tmp
## 味方が生きているかを検知する方法がない(めんどくさい)ので条件は適当
execute unless score @s teamscore = @a[tag=!helm6tmp,tag=alive,limit=1] teamscore run return run function items:skills/helmet/6/noallyhere
tag @s remove helm6tmp
execute store result score $tmp tmp run random value 0..2
execute if score $tmp tmp matches 0 run tellraw @s [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"また一つ、血が遺るのだな。",color:"red"}]
execute if score $tmp tmp matches 1 run tellraw @s [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"これもまた、道であるが故。",color:"red"}]
execute if score $tmp tmp matches 2 run tellraw @s [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"...果てに道を拓く事が出来ればよいのだが。",color:"red"}]
scoreboard players reset $tmp tmp