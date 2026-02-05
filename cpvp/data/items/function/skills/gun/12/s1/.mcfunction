#マーカーがいるか確認する召喚する
scoreboard players operation #counter counter = @a[tag=victim,limit=1] playerdata
execute as @e[tag=gun12marker] if score @s owner = #counter counter run return run function items:skills/gun/12/s1/add
#いないなら新しいのを出す
scoreboard players reset #counter
function items:skills/gun/12/s1/summon
