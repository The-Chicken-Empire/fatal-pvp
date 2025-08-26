scoreboard players set @s perk13 0



tag @s add perk13tmp
execute as @a unless score @s teamscore = @a[tag=perk13tmp,limit=1] teamscore run tag @s add perk13tmp2
execute unless entity @a[tag=perk13tmp2] run return run function items:skills/perk/13/fail
execute as @r[tag=perk13tmp2,limit=1] run tag @s add perk13tmp3
execute as @a[tag=perk13tmp3,limit=1] run function items:skills/perk/13/target2
execute at @s run playsound minecraft:item.firecharge.use player @s ~ ~ ~ 1 1 1
tellraw @s [{"selector":"@a[tag=perk13tmp3,limit=1]","italic":false},{"text":"を","color":"white",italic:false},{"text":"標的","color":"#fd3224","italic":false},{"text":"にした","color":"white","italic":false}]
tag @a remove perk13tmp2
tag @a remove perk13tmp3
tag @s remove perk13tmp
