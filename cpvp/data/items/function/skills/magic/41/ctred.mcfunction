
execute at @s run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1 0 0
execute at @s run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1 0 0
execute at @s run playsound block.respawn_anchor.deplete block @a ~ ~ ~ 1 0 0
execute at @s run playsound entity.dragon_fireball.explode hostile @a ~ ~ ~ 1 0 0
execute at @s run playsound item.trident.thunder player @a ~ ~ ~ 1 0.4 0
#particleこのした

execute as @a if score @s playerdata = @e[tag=magic41tmp4,limit=1] owner run function items:skills/magic/41/ctreset
kill @s