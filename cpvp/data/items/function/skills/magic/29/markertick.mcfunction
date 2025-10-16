tag @s add m29marker1.tmp2
execute if score @s skills matches 13.. at @s run function items:skills/magic/29/summondisplay
execute if score @s skills matches 25.. run kill @s
tag @s remove m29marker1.tmp2