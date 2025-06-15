function buff:end/ with storage buff: check

data remove storage buff: check
data modify storage buff: check set from storage buff: temp[{isbuff:0b,unremovable:0b}]

execute if data storage buff: check run function buff:end/debuff2 with storage buff: check