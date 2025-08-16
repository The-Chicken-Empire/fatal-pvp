function effects:system/operation/please2 with entity @s
data remove storage effect: actionbar
scoreboard players reset #effect-counter8787
data modify storage effect: actionbar append value {"text":"\uC099","font":"space"}
data modify storage effect: actionbar append value {"text":"\uC099","font":"space"}
data modify storage effect: actionbar append value {"text":"\uC020","font":"space"}

execute if data storage effect: tmp[0] run function system:actionbar/effect/rec



execute if score #effect-counter8787 counter matches 1.. run function system:actionbar/effect/rec3
scoreboard players reset #effect-counter8787


data modify storage effect: actionbar append value {"text":"\uB099","font":"space"}
data modify storage effect: actionbar append value {"text":"\uB099","font":"space"}
data modify storage effect: actionbar append value {"text":"\uB020","font":"space"}