data remove storage effect: targeteffect
$execute if entity @s[type=player] run data modify storage effect: targeteffect set from storage effect: player[{id:$(UUID)}].effects
$execute if entity @s[type=!player] run data modify storage effect: targeteffect set from storage effect: entity[{id:$(UUID)}].effects
