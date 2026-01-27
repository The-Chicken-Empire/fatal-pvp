scoreboard players add @s gun6 10
execute if score @s gun6 matches 100.. run scoreboard players set @s gun6 100
tellraw @s [{text:"[",color:"yellow","italic":false},{text:"鏃の向かう処",color:"#585eb1",italic:false},{text:"]",color:"yellow","italic":false},{text:" 的中!",color:"aqua",italic:false},{text:"(+",color:"yellow","italic":false},{"score":{objective:gun6,name:"@s"},color:"yellow",italic:false},{text:"%)",color:"yellow","italic":false}]
execute at @s run playsound minecraft:item.trident.hit_ground block @s ~ ~ ~ 1 1.5 1
scoreboard players operation $damageadd damagecalc += @s gun6
scoreboard players add $ccadd damagecalc 10