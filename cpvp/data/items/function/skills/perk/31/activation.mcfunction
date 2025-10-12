function effects:system/modify/ {id:28,duration:72000,level:0}
tag @s add perk31.skillact

execute summon marker run function items:skills/perk/31/markersummon

execute at @s run playsound block.conduit.activate block @a ~ ~ ~ 2 1
tellraw @a [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"「只では死なぬ...この命尽きようと、道を拓く者がより易く往ける様。」",color:"red"}]

effect give @s levitation 2 10 true

tag @s add perk31.skillacting
tag @s remove perk31.skillact
