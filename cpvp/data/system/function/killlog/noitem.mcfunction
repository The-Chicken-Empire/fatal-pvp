execute store result score $tmp random run random value 1..5

execute if score $tmp random matches 1 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は"},{italic:false,selector:"@a[tag=tmpkiller,limit=1]"},{color:"white",italic:false,text:"に殴り殺された"}]
execute if score $tmp random matches 1 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は"},{italic:false,selector:"@a[tag=tmpkiller,limit=1]"},{color:"white",italic:false,text:"の拳の力を思い知った"}]
execute if score $tmp random matches 1 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は"},{italic:false,selector:"@a[tag=tmpkiller,limit=1]"},{color:"white",italic:false,text:"のカスダメージで死んだ"}]
execute if score $tmp random matches 1 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は"},{italic:false,selector:"@a[tag=tmpkiller,limit=1]"},{color:"white",italic:false,text:"の...何かで死んだ"}]
execute if score $tmp random matches 1 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は想定外にも"},{italic:false,selector:"@a[tag=tmpkiller,limit=1]"},{color:"white",italic:false,text:"の武器ですらないもので殺された"}]

scoreboard players reset $tmp random