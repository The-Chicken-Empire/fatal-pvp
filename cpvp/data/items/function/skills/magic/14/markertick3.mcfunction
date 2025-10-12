tag @s add m14bullet_a

execute at @s run particle minecraft:block{block_state:"black_terracotta"} ~ ~ ~ 0 0 0 1 3 force
execute at @s run tp ^ ^ ^0.1
execute at @s positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=playing] unless score @e[tag=m14bullet_a,limit=1] teamscore = @s teamscore positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function items:skills/magic/14/hit2
execute at @s run tp ^ ^ ^0.1
execute at @s positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=playing] unless score @e[tag=m14bullet_a,limit=1] teamscore = @s teamscore positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function items:skills/magic/14/hit2
execute at @s run tp ^ ^ ^0.1
execute at @s positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=playing] unless score @e[tag=m14bullet_a,limit=1] teamscore = @s teamscore positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function items:skills/magic/14/hit2
execute at @s run particle minecraft:block{block_state:"black_terracotta"} ~ ~ ~ 0 0 0 1 3 force
execute at @s run tp ^ ^ ^0.1
execute at @s positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=playing] unless score @e[tag=m14bullet_a,limit=1] teamscore = @s teamscore positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function items:skills/magic/14/hit2
execute at @s run tp ^ ^ ^0.1
execute at @s positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=playing] unless score @e[tag=m14bullet_a,limit=1] teamscore = @s teamscore positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function items:skills/magic/14/hit2
execute at @s run tp ^ ^ ^0.1
execute at @s positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=playing] unless score @e[tag=m14bullet_a,limit=1] teamscore = @s teamscore positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function items:skills/magic/14/hit2
execute at @s run particle minecraft:block{block_state:"black_terracotta"} ~ ~ ~ 0 0 0 1 3 force
execute at @s run tp ^ ^ ^0.1
execute at @s positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=playing] unless score @e[tag=m14bullet_a,limit=1] teamscore = @s teamscore positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function items:skills/magic/14/hit2
execute at @s run tp ^ ^ ^0.1
execute at @s positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=playing] unless score @e[tag=m14bullet_a,limit=1] teamscore = @s teamscore positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function items:skills/magic/14/hit2
execute at @s run tp ^ ^ ^0.1
execute at @s positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,tag=playing] unless score @e[tag=m14bullet_a,limit=1] teamscore = @s teamscore positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] run function items:skills/magic/14/hit2

execute if score @s skills matches 30.. run kill @s
tag @s remove m14bullet_a
