scoreboard players reset $check main
scoreboard players reset $check tmp
execute unless score @s mpcost matches -2147483648..2147483647 run scoreboard players set @s mpcost 0
execute unless score @s hpcost matches -2147483648..2147483647 run scoreboard players set @s hpcost 0
execute unless score @s engcost matches -2147483648..2147483647 run scoreboard players set @s engcost 0
#CTcheck
execute unless data storage cpvp:system skillslot store result score $check tmp run function system:cooltime/general/check_ct_mainhand
execute if data storage cpvp:system skillslot{slot:"offhand"} store result score $check tmp run function system:cooltime/general/check_ct_offhand
execute if data storage cpvp:system skillslot{slot:"helmet"} store result score $check tmp run function system:cooltime/general/check_ct_helmet
execute if data storage cpvp:system skillslot{slot:"chestplate"} store result score $check tmp run function system:cooltime/general/check_ct_chestplate
execute if data storage cpvp:system skillslot{slot:"leggings"} store result score $check tmp run function system:cooltime/general/check_ct_leggings
execute if data storage cpvp:system skillslot{slot:"boots"} store result score $check tmp run function system:cooltime/general/check_ct_boots

##perkならstorage cpvp: ctcheck.slotの中に使ったitemのslotを突っ込んでから起動
execute if data storage cpvp:system skillslot{slot:"perk"} store result score $check tmp run function system:cooltime/general/check_ct_by_slot with storage cpvp: ctcheck
#パークとかよくわかんないからあと
execute unless score $check tmp matches 1 run function system:cooltime/general/ct_fail
data remove storage cpvp:system skillslot
execute unless score $check tmp matches 1 run return 0
execute if data storage cpvp:system unfail run return run data remove storage cpvp:system unfail
scoreboard players reset $check tmp
#durability
execute if data storage durabilitycheck trigger store result score $check main run function items:skills/item/durabilitycheck with storage durabilitycheck
execute unless data storage durabilitycheck trigger run scoreboard players set $check main 1
execute unless score $check main matches 1 run function items:skills/item/durability0
data remove storage durabilitycheck trigger
execute unless score $check main matches 1 run return 0
scoreboard players reset $check main
#MPcheck
execute store result score $check tmp run function system:skillcostcheck/mpcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/mpless
execute unless score $check tmp matches 1 run return 0
scoreboard players reset $check tmp
#hp
#もし体力足りなければ死ぬ設定ならitemのcustomdata.cpvpに
execute store result score $check tmp run function system:skillcostcheck/hpcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/hpless
execute unless score $check tmp matches 1 run return 0
scoreboard players reset $check tmp
#eng
execute store result score $check tmp run function system:skillcostcheck/engcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/engless
execute unless score $check tmp matches 1 run return 0
scoreboard players reset $check tmp
#終わり
return 1