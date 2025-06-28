scoreboard players reset $check main
scoreboard players reset $check tmp
#CTcheck
execute if data storage cpvp:triggers/right_click {slot:"mainhand"}
execute store result score $check tmp run function system:cooltime/general/check_ct_mainhand
execute unless score $check tmp matches 1 run function system:cooltime/general/ct_fail
execute unless score $check tmp matches 1 run return fail
scoreboard players reset $check tmp
#durability
execute store result score $check main run function items:skills/item/durabilitycheck with storage durabilitycheck
execute unless score $check main matches 1 run function items:skills/item/durability0
execute unless score $check main matches 1 run return fail
scoreboard players reset $check main
#MPcheck
execute store result score $check tmp run function system:skillcostcheck/mpcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/mpless
execute unless score $check tmp matches 1 run return fail
scoreboard players reset $check tmp
#hp
#もし体力足りなければ死ぬ設定ならitemのcustomdata.cpvpに
execute store result score $check tmp run function system:skillcostcheck/mpcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/hpless
execute unless score $check tmp matches 1 run return fail
scoreboard players reset $check tmp
#eng
execute store result score $check tmp run function system:skillcostcheck/mpcheck
execute unless score $check tmp matches 1 run function system:skillcostcheck/engless
execute unless score $check tmp matches 1 run return fail
scoreboard players reset $check tmp
#終わり
return 1