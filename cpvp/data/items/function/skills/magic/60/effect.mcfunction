scoreboard players reset $tmp2 tmp

$function effects:system/pick/ {id:$(id)}
execute store result score $tmp2 tmp run data get storage effect: targeteffect.level
execute if score $tmp2 tmp matches 1.. run scoreboard players add $tmp tmp 1
$execute if score $tmp2 tmp matches 1.. run function effects:system/remove/ {id:$(id)}

$data remove storage cpvp:magic60 effects.[{id:$(id)}]
execute if score $tmp tmp matches 2.. run return fail
execute if data storage cpvp:magic60 effects.[0] run function items:skills/magic/60/loop