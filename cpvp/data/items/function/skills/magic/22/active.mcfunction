tag @s add magic22tmp

execute at @s anchored eyes positioned ^ ^ ^ summon marker run function items:skills/magic/22/summonmarker

execute if entity @e[tag=magic22hittmp] run function items:skills/magic/22/hit2

tag @s remove magic22tmp