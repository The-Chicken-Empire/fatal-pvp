#> system:stats_modifier/calculate
#
#
#
# @within system:stats_modifier/**

# スコアをリセット
# 存在フラグ
scoreboard players reset @s stats_modifier.addexist
scoreboard players reset @s stats_modifier.addmultexist
scoreboard players reset @s stats_modifier.multexist

# 数値の加算
scoreboard players set @s stats_modifier_add_maxhp 0
scoreboard players set @s stats_modifier_add_maxmp 0
scoreboard players set @s stats_modifier_add_mr 0
scoreboard players set @s stats_modifier_add_defence 0
scoreboard players set @s stats_modifier_add_physicaldef 0
scoreboard players set @s stats_modifier_add_magicdef 0
scoreboard players set @s stats_modifier_add_meleedef 0
scoreboard players set @s stats_modifier_add_rangedef 0
scoreboard players set @s stats_modifier_add_speed 0
scoreboard players set @s stats_modifier_add_vit 0
scoreboard players set @s stats_modifier_add_damage 0
scoreboard players set @s stats_modifier_add_physicaldmg 0
scoreboard players set @s stats_modifier_add_magicdmg 0
scoreboard players set @s stats_modifier_add_meleedmg 0
scoreboard players set @s stats_modifier_add_rangedmg 0
scoreboard players set @s stats_modifier_add_cc 0
scoreboard players set @s stats_modifier_add_agi 0
scoreboard players set @s stats_modifier_add_maxeng 0
scoreboard players set @s stats_modifier_add_attackspeed 0
scoreboard players set @s stats_modifier_add_bonusattackspeed 0

# ベース値に対する倍率 (additive multiplier)
scoreboard players set @s stats_modifier_addmult_maxhp 0
scoreboard players set @s stats_modifier_addmult_maxmp 0
scoreboard players set @s stats_modifier_addmult_mr 0
scoreboard players set @s stats_modifier_addmult_defence 0
scoreboard players set @s stats_modifier_addmult_physicaldef 0
scoreboard players set @s stats_modifier_addmult_magicdef 0
scoreboard players set @s stats_modifier_addmult_meleedef 0
scoreboard players set @s stats_modifier_addmult_rangedef 0
scoreboard players set @s stats_modifier_addmult_speed 0
scoreboard players set @s stats_modifier_addmult_vit 0
scoreboard players set @s stats_modifier_addmult_damage 0
scoreboard players set @s stats_modifier_addmult_physicaldmg 0
scoreboard players set @s stats_modifier_addmult_magicdmg 0
scoreboard players set @s stats_modifier_addmult_meleedmg 0
scoreboard players set @s stats_modifier_addmult_rangedmg 0
scoreboard players set @s stats_modifier_addmult_cc 0
scoreboard players set @s stats_modifier_addmult_agi 0
scoreboard players set @s stats_modifier_addmult_maxeng 0
scoreboard players set @s stats_modifier_addmult_attackspeed 0
scoreboard players set @s stats_modifier_addmult_bonusattackspeed 0

# 最終値に対する倍率 (multiplicative)
scoreboard players set @s stats_modifier_mult_maxhp 100
scoreboard players set @s stats_modifier_mult_maxmp 100
scoreboard players set @s stats_modifier_mult_mr 100
scoreboard players set @s stats_modifier_mult_defence 100
scoreboard players set @s stats_modifier_mult_physicaldef 100
scoreboard players set @s stats_modifier_mult_magicdef 100
scoreboard players set @s stats_modifier_mult_meleedef 100
scoreboard players set @s stats_modifier_mult_rangedef 100
scoreboard players set @s stats_modifier_mult_speed 100
scoreboard players set @s stats_modifier_mult_vit 100
scoreboard players set @s stats_modifier_mult_damage 100
scoreboard players set @s stats_modifier_mult_physicaldmg 100
scoreboard players set @s stats_modifier_mult_magicdmg 100
scoreboard players set @s stats_modifier_mult_meleedmg 100
scoreboard players set @s stats_modifier_mult_rangedmg 100
scoreboard players set @s stats_modifier_mult_cc 100
scoreboard players set @s stats_modifier_mult_agi 100
scoreboard players set @s stats_modifier_mult_maxeng 100
scoreboard players set @s stats_modifier_mult_attackspeed 100
scoreboard players set @s stats_modifier_mult_bonusattackspeed 100


# ステータスを計算
data modify storage cpvp:stats_modifier tmp.UUID set from entity @s UUID
function system:stats_modifier/calculate/calc with storage cpvp:stats_modifier tmp

# リセット
data remove storage cpvp:stats_modifier tmp