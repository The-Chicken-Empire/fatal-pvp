#弾消し
scoreboard players set @s handgun 0
#初期状態の銃をoffhandに入れる
setblock 0 250 0 minecraft:shulker_box{lock:{items:"barrier",count:1}} replace
function items:generate/gun/1/generate
item replace entity @s weapon.offhand from block 0 250 0 container.0
setblock 0 250 0 air replace
#音
execute at @s run playsound entity.item.break player @s ~ ~ ~ 1 2 0