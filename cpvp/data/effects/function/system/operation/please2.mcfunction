data remove storage effect: tmp
$execute if entity @s[type=player] run data modify storage effect: tmp set from storage effect: player[{id:$(UUID)}].effects
$execute if entity @s[type=!player] run data modify storage effect: tmp set from storage effect: entity[{id:$(UUID)}].effects
