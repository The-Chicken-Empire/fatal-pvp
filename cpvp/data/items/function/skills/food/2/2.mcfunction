tellraw @a [{text:"[",color:"white"},{selector:"@s"},{text:"] ",color:"white"},{text:"コラ～～～～～！",color:"white",bold:true}]
tellraw @s [{text:"虫が入っていた！ ",color:"white"},{text:"食事CT",color:"gold"},{text:"が",color:"white"},{text:"10秒",color:"yellow"},{text:"短縮した！",color:"white"}]

execute at @s run playsound block.end_portal_frame.fill ambient @s ~ ~ ~ 1 0.4 1