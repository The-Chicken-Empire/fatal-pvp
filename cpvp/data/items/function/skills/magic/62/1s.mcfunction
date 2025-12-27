scoreboard players remove @s counting 1
execute as @a if score @s playerdata = @e[tag=magic62clocktmp,limit=1] owner unless score @s eng matches 1.. run scoreboard players remove @e[tag=magic62clocktmp,limit=1] counting 2
execute as @a if score @s playerdata = @e[tag=magic62clocktmp,limit=1] owner unless score @s eng matches 1.. at @e[tag=magic62clocktmp] run playsound block.conduit.deactivate block @a ~ ~ ~ 1 2 0
execute as @a if score @s playerdata = @e[tag=magic62clocktmp,limit=1] owner if score @s eng matches 1.. run scoreboard players remove @s eng 1