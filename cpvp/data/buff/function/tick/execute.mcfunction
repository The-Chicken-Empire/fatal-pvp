
data remove storage buff: check
data modify storage buff: check set from storage buff: temp[0]



function buff:tick/execute2 with storage buff: check




execute if data storage buff: temp[0] run function buff:tick/execute

