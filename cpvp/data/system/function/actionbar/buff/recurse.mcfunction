
data remove storage buff: check
data modify storage buff: check set from storage buff: temp2[0]

execute if data storage buff: {check:{invisible:0b}} run function system:actionbar/buff/sushi with storage buff: temp2[0]






data remove storage buff: temp2[0]

execute if data storage buff: temp2[0] run function system:actionbar/buff/recurse