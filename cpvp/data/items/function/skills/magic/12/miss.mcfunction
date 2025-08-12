scoreboard players set $tmp tmp 0
execute at @s run playsound entity.villager.trade player @s ~ ~ ~ 1 1.2 1
tag @s remove magic12tmp
function system:cooltime/general/set_ct_mainhand {cooltime:80}