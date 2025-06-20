scoreboard players operation @s mp -= @s mpcost
tellraw @s {text:"--------------------"}
execute as @a[distance=..20] unless score @s teamscore = @a[tag=magic2,limit=1] teamscore run function items:skills/magic/2/players
tellraw @s {text:"--------------------"}
execute at @s run playsound item.book.page_turn block @s ~ ~ ~ 1 1 1
function system:cooltime/general/set_ct_mainhand {cooltime:200}