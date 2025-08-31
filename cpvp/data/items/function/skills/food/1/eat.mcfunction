execute at @s run playsound entity.player.burp player @s ~ ~ ~ 1 1 1
scoreboard players add @s mp 800
execute if score @s mp > @s maxmp run scoreboard players operation @s mp = @s maxmp
scoreboard players set #heal main 100
function api:heal/
#必須項目。食事CT
function effects:system/gain/ {id:33,level:1,duration:500}