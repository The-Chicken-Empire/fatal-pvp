execute as @a[scores={Cstar=1..}] store result score @s random run random value 1..5
#execute as @a[scores={random=1}] run function Cstar:
#execute as @a[scores={random=2}] run function Cstar:
#execute as @a[scores={random=3}] run function Cstar:
#execute as @a[scores={random=4}] run function Cstar:
#execute as @a[scores={random=5}] run function Cstar:
clear @s minecraft:nether_star[minecraft:custom_data={cpvp:{CriticalStar:1b}}] 1
execute at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.7 1
execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.2 0.2 1 100 force @s
effect clear @s minecraft:blindness
tellraw @s [{"bold":true,"selector":"@s"},{"italic":false,"text":"が"},{"color":"blue","obfuscated":true,"text":"X"},{"bold":true,"color":"yellow","italic":false,"text":"Critical Star"},{"bold":false,"color":"blue","italic":false,"obfuscated":true,"text":"X"},"の力を開放した！"]
#execute if score $Starcall settings matches 1 run tellraw 
scoreboard players set @s Cstar 0