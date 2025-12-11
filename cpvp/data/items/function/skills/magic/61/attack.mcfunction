tag @s add m61markertmp
execute as @a[tag=playing] if score @s playerdata = @e[tag=m61markertmp,limit=1] owner at @s summon item_display run function items:skills/magic/61/summonid
tag @s remove m61markertmp