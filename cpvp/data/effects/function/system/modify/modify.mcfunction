function effects:system/operation/please with entity @s



$function effects:effects/$(id)/


$execute unless data storage effect: tmp[{id:$(id)}] run return run function effects:system/modify/modify_gain with storage effect: q[0]
$execute if data storage effect: tmp[{id:$(id)}] run return run function effects:system/modify/modify_modify with storage effect: q[0]


