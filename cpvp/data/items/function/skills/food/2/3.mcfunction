tellraw @a [{text:"[",color:"white"},{selector:"@s"},{text:"] ",color:"white"},{text:"殺すぞ～～～～～～～！",color:"white",bold:true}]
tellraw @s [{text:"髪の毛が入っていた！ ",color:"white"},{text:"[攻撃力上昇:2]",color:"dark_red"},{text:"を",color:"white"},{text:"12秒間",color:"yellow"},{text:"得た！",color:"white"}]

function effects:system/gain/ {id:4,level:2,duration:240}

execute at @s run playsound entity.ghast.shoot ambient @s ~ ~ ~ 1 0 1