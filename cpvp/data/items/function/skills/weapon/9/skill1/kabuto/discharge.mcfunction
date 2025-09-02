tp @s @s
function api:motion/rotation_and_y {power:8,y:-90}
effect give @s slow_falling 3 1 true
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 1.9
function effects:system/remove/ {id:34}

execute as @e[tag=victim] at @s positioned ~ ~1 ~ run function items:skills/weapon/9/skill1/kabuto/particle

tag @s add cp.owner
execute as @e[tag=seraph_wing] if score @s owner = @a[tag=cp.owner,limit=1] playerdata run tag @s add cp.this
execute as @e[tag=cp.this] on passengers if entity @s[tag=seraph_feather_r] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["seraph_feather_r_another"]}
execute as @e[tag=cp.this] on passengers if entity @s[tag=seraph_feather_l] run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["seraph_feather_l_another"]}
execute as @e[tag=cp.this] on passengers run data modify entity @s transformation.scale set value [1.2f,1.2f,1.2f]

tag @s remove cp.owner
tag @e[tag=cp.this] remove cp.this


summon marker ~ ~ ~ {Tags:["seraph_kabuto","cp.tmp","skillmarker"]}
scoreboard players operation @e[tag=cp.tmp,limit=1] owner = @s playerdata
tag @e[tag=cp.tmp] remove cp.tmp