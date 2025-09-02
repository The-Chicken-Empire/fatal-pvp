tp @s @s
function api:motion/rotation_and_y {power:8,y:-90}
effect give @s slow_falling 3 1 true
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1.9
function effects:system/remove/ {id:34}

execute as @e[tag=victim] at @s positioned ~ ~1 ~ run function items:skills/weapon/9/skill1/kabuto/particle

summon marker ~ ~ ~ {Tags:["seraph_kabuto","cp.tmp","skillmarker"]}
scoreboard players operation @e[tag=cp.tmp,limit=1] owner = @s playerdata
tag @e[tag=cp.tmp] remove cp.tmp