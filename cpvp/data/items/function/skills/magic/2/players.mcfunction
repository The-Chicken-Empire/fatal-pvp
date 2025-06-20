scoreboard players operation $tmp2 tmp = @s hp
scoreboard players operation $tmp2 tmp *= $100 main
scoreboard players operation $tmp2 tmp /= @s maxhp

execute if score $tmp2 tmp matches ..20 run tellraw @a[tag=magic2] [{selector:"@s",italic:false},{color:"white",italic:false,text:" "},{color:"white",italic:false,text:"HP:"},{color:"red",italic:false,bold:true,score:{name:"$tmp2",objective:"tmp"}},{color:red,italic:false,bold:true,text:"%"}]
execute if score $tmp2 tmp matches 21..40 run tellraw @a[tag=magic2] [{selector:"@s",italic:false},{color:"white",italic:false,text:" "},{color:"white",italic:false,text:"HP:"},{color:"gold",italic:false,bold:true,score:{name:"$tmp2",objective:"tmp"}},{color:gold,italic:false,bold:true,text:"%"}]
execute if score $tmp2 tmp matches 41..60 run tellraw @a[tag=magic2] [{selector:"@s",italic:false},{color:"white",italic:false,text:" "},{color:"white",italic:false,text:"HP:"},{color:"yellow",italic:false,bold:true,score:{name:"$tmp2",objective:"tmp"}},{color:"yellow",italic:false,bold:true,text:"%"}]
execute if score $tmp2 tmp matches 61..80 run tellraw @a[tag=magic2] [{selector:"@s",italic:false},{color:"white",italic:false,text:" "},{color:"white",italic:false,text:"HP:"},{color:"green",italic:false,bold:true,score:{name:"$tmp2",objective:"tmp"}},{color:green,italic:false,bold:true,text:"%"}]
execute if score $tmp2 tmp matches 81.. run tellraw @a[tag=magic2] [{selector:"@s",italic:false},{color:"white",italic:false,text:" "},{color:"white",italic:false,text:"HP:"},{color:"dark_green",italic:false,bold:true,score:{name:"$tmp2",objective:"tmp"}},{color:dark_green,italic:false,bold:true,text:"%"}]

scoreboard players reset $tmp2 tmp