execute store result score $tmp random run random value 1..5
execute if score $tmp random matches 1 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は、"},{italic:false,selector:"@a[tag=tmpkiller,limit=1]"},{color:"white",italic:false,text:"によって死ぬ運命にあった"}]
execute if score $tmp random matches 2 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"を殺したのは貴方ですね？"},{italic:false,selector:"@a[tag=tmpkiller,limit=1]"}]
execute if score $tmp random matches 3 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"を最後に攻撃したのは"},{italic:false,selector:"@a[tag=tmpkiller,limit=1]"},{color:"white",italic:false,text:"でした"}]
execute if score $tmp random matches 4 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は"},{italic:false,selector:"@a[tag=tmpkiller,limit=1]"},{color:"white",italic:false,text:"によって東京湾の一部になった"}]
execute if score $tmp random matches 5 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は"},{italic:false,selector:"@a[tag=tmpkiller,limit=1]"},{color:"white",italic:false,text:"から逃れられなかった"}]
scoreboard players reset $tmp random
tag @a remove tmpkiller