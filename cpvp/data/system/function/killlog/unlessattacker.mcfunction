execute store result score $tmp random run random value 1..10
execute if score $tmp random matches 1 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は、誰にも関与されずひっそりと死んだ"}]
execute if score $tmp random matches 2 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"が死んだ！この人でなし！"}]
execute if score $tmp random matches 3 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は、もっと生きたいと願っただろうな"}]
execute if score $tmp random matches 4 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は死んでいる"}]
execute if score $tmp random matches 5 run tellraw @a [{color:"white",italic:false,text:"お願い、死なないで"},{italic:false,selector:"@s"},{color:"white",italic:false,text:"!次回、"},{italic:false,selector:"@s"},{color:"white",italic:false,text:"、死す！"}]
execute if score $tmp random matches 6 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"よ、しんでしまうとはなさけない！"}]
execute if score $tmp random matches 7 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"...お前は...いい奴だったよ"}]
execute if score $tmp random matches 8 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は救済された"}]
execute if score $tmp random matches 9 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"は死んだwwww"}]
execute if score $tmp random matches 10 run tellraw @a [{italic:false,selector:"@s"},{color:"white",italic:false,text:"...?お前...なぜ死んだ...?"}]
scoreboard players reset $tmp random