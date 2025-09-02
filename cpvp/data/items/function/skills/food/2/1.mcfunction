tellraw @a [{text:"[",color:"white"},{selector:"@s"},{text:"] ",color:"white"},{text:"うっひょ～～！",color:"white",bold:true}]
tellraw @s [{text:"とても美味しかった！ ",color:"white"},{text:"HP",color:"red"},{text:"が",color:"white"},{text:"追加で",color:"white"},{text:"10",color:"yellow"},{text:"回復した！",color:"white"}]
scoreboard players set #heal main 100 
function api:heal/
execute at @s run playsound block.beacon.activate ambient @s ~ ~ ~ 1 1 1