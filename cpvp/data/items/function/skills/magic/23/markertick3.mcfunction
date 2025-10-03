tag @s add magic23tmp6

execute if score @s skills matches 2 run function items:skills/magic/23/callsf {range:1.8}
execute if score @s skills matches 4 run function items:skills/magic/23/callsf {range:3.6}
execute if score @s skills matches 6 run function items:skills/magic/23/callsf {range:5.4}
execute if score @s skills matches 8 run function items:skills/magic/23/callsf {range:7.2}
execute if score @s skills matches 10 run function items:skills/magic/23/callsf {range:9}
execute if score @s skills matches 12 run function items:skills/magic/23/callsf {range:10.8}

execute if score @s skills matches 13.. run kill @s
tag @s remove magic23tmp6