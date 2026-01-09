tag @e[tag=victim] remove physicaldamagetmp
tag @e[tag=victim] remove magicdamagetmp
tag @e[tag=victim] add specialdamagetmp

execute at @e[tag=victim] run playsound item.trident.throw player @a ~ ~ ~ 1 1.3 0
execute at @e[tag=victim] run particle sculk_soul ~ ~1 ~ 0.4 0.7 0.4 0 20 normal