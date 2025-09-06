execute if score @s skills matches 8.. as @e[tag=weapon5.2] if score @s playerdata = @e[tag=w5.2marker,limit=1] owner run function items:skills/weapon/5/motion
execute if score @s skills matches 8..14 as @e[tag=weapon5.2] if score @s playerdata = @e[tag=w5.2marker,limit=1] owner at @s run function items:skills/weapon/5/markeractivate2
execute if score @s skills matches 15.. run function items:skills/weapon/5/markeractivate2.2
