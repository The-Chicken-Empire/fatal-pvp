scoreboard players set @s counting 10

tag @s add magic41bullettmp

function items:skills/magic/41/loop

execute if score @s counting2 matches ..0 run kill @s
tag @s remove magic41bullettmp