scoreboard players remove #counter counter 1

data modify storage buff: actionbar append value {"text":"\uB016","font":"space"}

execute if score #counter counter matches 1.. run function system:actionbar/buff/recurse2