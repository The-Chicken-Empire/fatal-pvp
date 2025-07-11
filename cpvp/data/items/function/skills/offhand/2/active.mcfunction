scoreboard players remove @s eng 15
scoreboard players set @s hp 10
scoreboard players set @s absorption 150
execute at @s run playsound item.totem.use player @a ~ ~ ~ 1 1 1 
execute at @s run particle totem_of_undying ~ ~ ~ 0 0 0 1 50 normal
function system:cooltime/general/set_ct_offhand {cooltime:400}