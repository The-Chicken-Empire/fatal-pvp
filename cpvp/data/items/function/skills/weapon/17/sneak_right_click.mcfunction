tag @s add w17tmp
execute as @e[tag=weapon18] if score @s owner = @n[tag=w17tmp] playerdata run return run tag @s remove w17tmp
execute as @e[tag=playing,tag=!w17tmp] unless score @s teamscore = @n[tag=w17tmp] teamscore run function items:skills/weapon/17/gazecount
execute if score $weapon17 tmp matches 7.. unless entity @s[tag=weapon18] run function items:skills/weapon/17/replace
scoreboard players reset $weapon17 tmp
tag @s remove w17tmp
#使用後処理
scoreboard players reset $check main
scoreboard players set @s carrotuse 0
