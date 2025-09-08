playsound entity.player.hurt_drown master @a ~ ~ ~ 1 1
scoreboard players set $heal main 10
tag @s add healer
function api:heal/