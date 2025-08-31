#初期状態の銃をoffhandに入れる
function items:generate/gun/1/generate
item replace entity @s weapon.mainhand from block 0 0 0 container.0
#音
execute at @s run playsound entity.item.break player @s ~ ~ ~ 1 2 0