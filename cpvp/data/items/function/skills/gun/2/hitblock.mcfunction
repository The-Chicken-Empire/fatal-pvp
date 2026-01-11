#エンチャからの呼び出し
#オーナー呼び出し
data modify storage cpvp:range2 owner set from entity @s Owner
function items:skills/gun/2/getowner with storage cpvp:range2
data remove storage cpvp:range2 owner
#アビリティ 🌵
execute at @s summon item_display run function items:skills/gun/2/summonid
execute at @s run playsound entity.item.pickup player @a ~ ~ ~ 1 0.8 0

tag @a[tag=range2tmp] remove range2tmp
kill @s