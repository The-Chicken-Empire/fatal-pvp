execute if entity @s[tag=w13melee] at @s run function items:skills/weapon/13/s1/


function effects:system/pick/ {id:50}
execute if entity @s[tag=w13melee] if data storage effect: targeteffect if predicate items:magic/18/60 at @s run function items:skills/weapon/13/s2/


execute if entity @s[tag=w13melee] unless data storage effect: targeteffect if predicate items:magic/18/_ at @s run function items:skills/weapon/13/s2/
tag @s remove w13melee