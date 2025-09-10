playsound item.shield.break master @a ~ ~ ~ 1 1


tag @s add cp.this
execute as @a if score @s playerdata = @e[tag=cp.this,limit=1] owner run tag @s add cp.owner

execute as @e[tag=playing] if score @s teamscore = @e[tag=cp.this,limit=1] teamscore at @s run function items:skills/magic/21/skill2/mp2


tag @s remove cp.this