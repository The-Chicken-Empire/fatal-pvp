tag @s add cp.owner
execute as @e[tag=magic28] if score @s owner = @a[tag=cp.owner,limit=1] playerdata run tag @s add cp.this
execute unless entity @e[tag=cp.this,limit=1] at @s run return run function items:skills/magic/28/skill1/use
execute if entity @e[tag=cp.this,limit=1,scores={counter=0,counter2=10..}] as @e[tag=cp.this,scores={counter=0,counter2=10..}] at @s run function items:skills/magic/28/skill2/up/go


tag @e[tag=cp.this] remove cp.this
tag @s remove cp.owner

