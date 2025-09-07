scoreboard players operation @s mp -= @s mpcost
tp @s @s
function api:motion/rotation_and_y {power:20,y:5}
function effects:system/gain/ {level:1,duration:20,id:34}


execute rotated ~ 0 run playsound minecraft:item.axe.scrape master @a ^ ^ ^5 1 1
execute rotated ~ 0 run playsound minecraft:item.axe.scrape master @a ^ ^ ^10 1 1
execute rotated ~ 0 run playsound minecraft:item.axe.scrape master @a ^ ^ ^15 1 1
execute rotated ~ 0 run playsound minecraft:item.axe.scrape master @s ^ ^ ^5 1 1 1
execute rotated ~ 0 run playsound minecraft:item.axe.scrape master @s ^ ^ ^10 1 1 1 
execute rotated ~ 0 run playsound minecraft:item.axe.scrape master @s ^ ^ ^15 1 1 1


scoreboard players set $ct main 240
function api:ct/mainhand