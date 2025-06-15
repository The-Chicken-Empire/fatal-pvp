
data remove storage buff: check
data modify storage buff: check set from storage buff: temp[0]

execute if data storage buff: {check:{isbuff:1b}} run function buff:modify/ with storage buff: check

data modify storage buff: temp2 append from storage buff: temp[0]
data remove storage buff: temp[0]



execute if data storage buff: temp[0] run function buff:modify/buff2

