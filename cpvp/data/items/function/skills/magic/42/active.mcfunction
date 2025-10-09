scoreboard players set @s hp 1
scoreboard players set @s absorption 0

execute at @s run particle block{block_state:redstone_block} ~ ~1 ~ 0.5 0.5 0.5 1 25 normal
execute at @s run particle crimson_spore ~ ~ ~ 0 0 0 0.3 20 normal
execute at @s run playsound entity.warden.hurt hostile @s ~ ~ ~ 1 0 0
execute at @s run playsound entity.player.hurt hostile @a ~ ~ ~ 1 0 0
execute at @s run playsound entity.skeleton_horse.death hostile @a ~ ~ ~ 1 0 0


scoreboard players set $ct main 160
function api:ct/mainhand