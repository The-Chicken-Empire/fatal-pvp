#これが弓を受けた時のデータ
data modify storage cpvp:getbowdata id set value 5
function items:skills/gun/arrow/data

execute at @s run playsound item.spyglass.use player @s ~ ~ ~ 1 0 1
execute at @s run playsound item.spyglass.use player @s ~ ~ ~ 1 0 1
execute at @s run playsound item.spyglass.use player @s ~ ~ ~ 1 0 1
execute at @s run playsound item.spyglass.use player @s ~ ~ ~ 1 0 1

execute store result score $ct main run function system:cooltime/general/get_ct_mainhand
scoreboard players add $ct main 120
function api:ct/mainhand