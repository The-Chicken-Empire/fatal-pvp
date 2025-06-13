#初期状態の銃をoffhandに入れる
setblock 0 250 0 minecraft:shulker_box{lock:{items:"barrier",count:1}} replace
loot replace block 0 250 0 container.0 loot items:g1
item replace entity @s weapon.mainhand from block 0 250 0 container.0
setblock 0 250 0 air replace
#音
execute at @s run playsound entity.item.break player @s ~ ~ ~ 1 2 0