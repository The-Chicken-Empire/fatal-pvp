

execute if predicate system:void if entity @s[type=#arrows] run return run kill @s
execute if predicate system:void if entity @s[tag=playing,type=!player] run function damage:entity_death
execute if predicate system:void if entity @s[type=player,tag=playing] run function system:death
execute if predicate system:void run tp @s ~ 0 ~
#応急処置
execute if predicate system:void unless entity @s[type=#arrows] unless entity @s[type=player] unless entity @s[tag=playing] run kill @s
execute if predicate system:void at @s run playsound block.beacon.deactivate master @s ~ ~ ~ 1 0.8 1