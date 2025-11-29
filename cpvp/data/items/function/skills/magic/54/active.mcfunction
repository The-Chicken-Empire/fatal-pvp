

tag @s add magic54tmp

execute at @s as @e[tag=playing,tag=!combatdummy,distance=..7] unless score @s teamscore = @a[tag=magic54tmp,limit=1] teamscore run function items:skills/magic/54/hit
playsound entity.zombie.hurt hostile @a ~ ~ ~ 1 0.6 0

tag @s remove magic54tmp
scoreboard players set $ct main 240
function api:ct/mainhand