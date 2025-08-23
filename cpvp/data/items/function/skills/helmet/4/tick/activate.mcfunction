effect clear @s darkness
tag @e[tag=seraph._30,tag=cp.this] remove seraph._30
particle end_rod ~ ~1 ~ 1 1 1 1 100
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 1
playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 1 0.1
function stats:statscalc