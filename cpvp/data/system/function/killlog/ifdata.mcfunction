execute as @a if score @s playerdata = @a[tag=tmpdied,limit=1] attacker run tag @s add tmpkiller
$function system:killlog/$(itemtype)/$(id)/$(attacktype)