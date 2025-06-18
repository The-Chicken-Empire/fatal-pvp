function buff:system/please_p with entity @s
data remove storage buff: actionbar

data modify storage buff: temp2 set from storage buff: temp

data modify storage buff: actionbar append value {"text":"\uC099","font":"space"}
data modify storage buff: actionbar append value {"text":"\uC099","font":"space"}
data modify storage buff: actionbar append value {"text":"\uC020","font":"space"}
execute if data storage buff: temp2[0] run function system:actionbar/buff/recurse

execute if score #counter counter matches 1.. run function system:actionbar/buff/recurse2
scoreboard players reset #counter
data modify storage buff: actionbar append value {"text":"\uB099","font":"space"}
data modify storage buff: actionbar append value {"text":"\uB099","font":"space"}
data modify storage buff: actionbar append value {"text":"\uB020","font":"space"}
data remove storage buff: temp2