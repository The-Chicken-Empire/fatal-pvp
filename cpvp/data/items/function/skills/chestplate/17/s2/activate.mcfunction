tag @s add cp17activated
item modify entity @s armor.chest items:skills/chestplate/17/reset
item modify entity @s armor.chest items:generate/chestplate/17/stats
item modify entity @s armor.chest items:skills/chestplate/17/ability
item modify entity @s armor.chest items:generate/chestplate/17/flavor

playsound entity.phantom.death master @s ~ ~ ~ 1 0
playsound entity.phantom.death master @s ~ ~ ~ 1 0
playsound entity.phantom.death master @s ~ ~ ~ 1 0

tellraw @s [{"text":""},{"text":"黒色","color":"white"},{"text":"の","color":"gray"},{"text":"白衣","color":"dark_gray"},{"text":"のスキルが変化した","color":"red"}]
