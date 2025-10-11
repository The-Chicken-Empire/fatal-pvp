execute store result score $dtwtmp tmp run random value 0..1
execute if score $dtwtmp tmp matches 0 run data modify entity @s text set value [{"score":{objective:"tmp",name:"$dttmp"},"color":"gold"},{"text":".","color":"dark_purple"},{"score":{objective:"tmp",name:"$dttmp2"},"color":"dark_purple"}]
execute if score $dtwtmp tmp matches 1 run data modify entity @s text set value [{"score":{objective:"tmp",name:"$dttmp"},"color":"dark_purple"},{"text":".","color":"gold"},{"score":{objective:"tmp",name:"$dttmp2"},"color":"gold"}]

execute if entity @e[tag=victim,tag=meleedamagetmp] run data modify entity @s background set value 1241448448
execute if entity @e[tag=victim,tag=rangedamagetmp] run data modify entity @s background set value 1224999167