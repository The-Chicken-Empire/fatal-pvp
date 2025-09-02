tag @s add cp.owner
execute as @e[tag=seraph_wing] if score @s owner = @a[tag=cp.owner,limit=1] playerdata run tag @s add cp.this

effect give @s darkness 2 10 true
#function effects:system/pick/ {id:23}
#execute store result score #counter counter run data get storage effect: targeteffect.level
#execute if score #counter counter matches ..30 run function items:skills/helmet/4/tick/_30
#execute if score #counter counter matches 31.. run function items:skills/helmet/4/tick/31_

scoreboard players reset #counter




tag @s remove cp.owner
tag @e[tag=cp.this] remove cp.this
