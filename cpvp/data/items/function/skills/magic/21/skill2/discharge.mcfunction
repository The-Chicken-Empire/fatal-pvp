
scoreboard players set $ct main 300
function api:ct/mainhand







playsound block.anvil.use master @a ~ ~ ~ 1 1



tag @s add cp.owner

execute as @e[tag=magic21] if score @s owner = @a[tag=cp.owner,limit=1] playerdata at @s run tag @s add entity_death




execute summon slime run function items:skills/magic/21/skill2/summon


tag @s remove cp.owner