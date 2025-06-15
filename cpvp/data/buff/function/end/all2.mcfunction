function buff:end/ with storage buff: check

data remove storage buff: check
data modify storage buff: check set from storage buff: temp[{unremovable:0b}]

execute if data storage buff: check run function buff:end/all2 with storage buff: check