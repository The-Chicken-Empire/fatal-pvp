tag @s add magic53
tag @s add skillmarker
scoreboard players operation @s owner = @e[tag=magic53tmp,limit=1] playerdata
scoreboard players operation @s teamscore = @e[tag=magic53tmp,limit=1] teamscore

data modify entity @s PickupDelay set value 10000000
data modify entity @s Motion.[0] set from storage cpvp:magic53 x
data modify entity @s Motion.[1] set from storage cpvp:magic53 y
data modify entity @s Motion.[2] set from storage cpvp:magic53 z
data modify entity @s Item set value {id:"minecraft:firework_star",count:1}
say a


tag @s remove magic53tmp2