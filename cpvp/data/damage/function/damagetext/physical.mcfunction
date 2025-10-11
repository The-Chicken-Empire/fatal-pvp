data modify entity @s text set value [{"score":{objective:"tmp",name:"$dttmp"},"color":"gold"},{"text":".","color":"gold"},{"score":{objective:"tmp",name:"$dttmp2"},"color":"gold"}]

execute if entity @e[tag=victim,tag=meleedamagetmp] run data modify entity @s background set value 1241448448
execute if entity @e[tag=victim,tag=rangedamagetmp] run data modify entity @s background set value 1224999167