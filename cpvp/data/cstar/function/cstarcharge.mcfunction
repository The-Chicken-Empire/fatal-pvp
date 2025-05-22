scoreboard players add @s Cstar 1
effect give @s[scores={Cstar=1..99}] minecraft:blindness 2 1
execute at @s[scores={Cstar=1..99}] run playsound minecraft:block.beacon.ambient master @s ~ ~ ~ 0.7 2
execute at @s[scores={Cstar=20}] run playsound minecraft:block.beacon.activate master
execute at @s[scores={Cstar=40}] run playsound minecraft:block.beacon.activate master
execute at @s[scores={Cstar=60}] run playsound minecraft:block.beacon.activate master
execute at @s[scores={Cstar=80}] run playsound minecraft:block.beacon.activate master
execute as @s[scores={Cstar=100..}] run function cstar:cstaruse