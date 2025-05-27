#function buff:check/ {id:aa}をでidを持ってるからがbuff checkに
function buff:system/please_e
function buff:system/please_p
data remove storage buff: check
$execute if data storage buff: temp[{id:$(id)}] run data modify storage buff: check set from storage buff temp[{id:$(id)}]
$execute if data storage buff: temp[{id:$(id)}] run data modify storage buff: check.success set value 1b