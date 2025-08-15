execute store result storage effect: tmp2.duration int 0.9999999 run data get storage effect: tmp2.duration
$function effects:effects/$(id)/tick
$execute if data storage effect: {tmp2:{duration:0}} run function effects:system/remove/ {id:$(id)}




data modify storage effect: tmp3 append from storage effect: tmp2
data remove storage effect: tmp2

execute if data storage effect: tmp[0] run data modify storage effect: tmp2 set from storage effect: tmp[0]
execute if data storage effect: tmp[0] run data remove storage effect: tmp[0]
execute if data storage effect: tmp2 run function effects:system/tick/_ with storage effect: tmp2


