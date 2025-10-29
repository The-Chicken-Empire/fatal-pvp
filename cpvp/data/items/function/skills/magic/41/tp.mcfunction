tag @s add magic41tped
summon marker ~ ~ ~ {Tags:["m41rotate"]}
execute as @e[tag=m41rotate] at @s rotated as @a[tag=magic41tped,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s run tp @s @e[tag=m41tp,limit=1]
execute at @s rotated as @e[tag=m41rotate,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=m41tp] at @s run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1 0 0
execute as @e[tag=m41tp] at @s run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1 0 0
execute as @e[tag=m41tp] at @s run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1 0 0
execute as @e[tag=m41tp] at @s run playsound entity.dragon_fireball.explode hostile @a ~ ~ ~ 1 0 0
execute as @e[tag=m41tp] at @s run playsound item.trident.thunder player @a ~ ~ ~ 1 0.4 0
#particleこのした

execute at @s as @e[tag=playing,distance=..8] unless score @s teamscore = @a[tag=magic41tped,limit=1] teamscore run function items:skills/magic/41/tphit
function items:skills/magic/41/ctreset

kill @e[tag=m41tp]
kill @e[tag=m41tp2]
tag @s remove magic41tped