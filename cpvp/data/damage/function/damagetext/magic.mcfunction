data modify entity @s text set value [{"score":{objective:"tmp",name:"$dttmp"},"color":"dark_purple"},{"text":".","color":"dark_purple"},{"score":{objective:"tmp",name:"$dttmp2"},"color":"dark_purple"}]

execute if entity @e[tag=victim,tag=meleedamagetmp] run data modify entity @s background set value 1241448448
execute if entity @e[tag=victim,tag=rangedamagetmp] run data modify entity @s background set value 1224999167