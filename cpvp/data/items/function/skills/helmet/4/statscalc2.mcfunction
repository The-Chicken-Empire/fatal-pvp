function effects:system/pick/ {id:23}
execute store result score #counter4512 counter run data get storage effect: targeteffect.level
execute if score #counter4512 counter matches ..30 run function items:skills/helmet/4/statscalc2/0_9
execute if score #counter4512 counter matches 31.. run function items:skills/helmet/4/statscalc2/1_1

scoreboard players reset #counter4512

