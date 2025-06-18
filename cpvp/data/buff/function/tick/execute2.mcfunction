
execute store result score #buff-counter8919 counter run data get storage buff: check.duration
execute if score #buff-counter8919 counter matches 1.. run scoreboard players remove #buff-counter8919 counter 1
execute if score #buff-counter8919 counter matches 0.. store result storage buff: check.duration int 1 run scoreboard players get #buff-counter8919 counter

scoreboard players reset #buff-counter8919
function buff:tick/function with storage buff: check
data modify storage buff: temp2 append from storage buff: check
data remove storage buff: temp[0]

