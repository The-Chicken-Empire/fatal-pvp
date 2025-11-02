tag @s add w17tmp
execute as @a[tag=playing,tag=!w17tmp] unless score @s teamscore = @n[tag=w17tmp] teamscore run function items:skills/weapon/17/gazecount
execute if score $weapon17 tmp matches 7.. run function items:skills/weapon/17/replace
tag @s remove w17tmp
#使用後処理
scoreboard players reset $check main
scoreboard players set @s carrotuse 0