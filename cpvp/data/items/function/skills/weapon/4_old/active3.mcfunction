#mp減少
execute as @e[tag=w4checktmp] run scoreboard players operation @s mp -= @s mpcost
#速度バフ
execute as @e[tag=w4checktmp] run function effects:system/modify/ {id:"20",duration:10,level:1}
#暗闇デバフ
execute as @e[tag=w4checktmp] run function effects:system/modify/ {id:"19",duration:100,level:1}
tag @s add weapon4-3
tag @e[tag=w4checktmp] add weapon4-4
execute summon marker run function items:skills/weapon/4_old/summon2ndmarker
execute as @e[tag=weapon4] if score @s owner = @e[tag=w4checktmp,limit=1] playerdata run kill @s