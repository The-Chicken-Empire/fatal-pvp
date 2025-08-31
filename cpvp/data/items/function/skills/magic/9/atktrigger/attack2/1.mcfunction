scoreboard players remove @e[tag=victim,limit=1] mp 2000
execute if score @e[tag=victim,limit=1] mp matches ..0 run scoreboard players set @e[tag=victim,limit=1] mp 0
execute as @e[tag=victim,limit=1] at @s run playsound entity.puffer_fish.death player @s ~ ~ ~ 1 1 0
execute as @e[tag=victim,limit=1] run function effects:system/gain/ {id:31,level:2,duration:200}
execute summon marker run function items:skills/magic/9/summonmarker2