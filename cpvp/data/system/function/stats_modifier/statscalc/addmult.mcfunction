#> system:stats_modifier/statscalc/addmult
#
#
#
# @within stats:statscalc

# ステータスの乗算を行う
# maxhp
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_maxhp
scoreboard players add $tmp1 main 100
scoreboard players operation @s maxhp *= $tmp1 main
scoreboard players operation @s maxhp /= $100 main

# maxmp
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_maxmp
scoreboard players add $tmp1 main 100
scoreboard players operation @s maxmp *= $tmp1 main
scoreboard players operation @s maxmp /= $100 main

# mr
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_mr
scoreboard players add $tmp1 main 100
scoreboard players operation @s mr *= $tmp1 main
scoreboard players operation @s mr /= $100 main

# defence
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_defence
scoreboard players add $tmp1 main 100
scoreboard players operation @s defence *= $tmp1 main
scoreboard players operation @s defence /= $100 main

# physicaldef
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_physicaldef
scoreboard players add $tmp1 main 100
scoreboard players operation @s physicaldef *= $tmp1 main
scoreboard players operation @s physicaldef /= $100 main

# magicdef
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_magicdef
scoreboard players add $tmp1 main 100
scoreboard players operation @s magicdef *= $tmp1 main
scoreboard players operation @s magicdef /= $100 main

# meleedef
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_meleedef
scoreboard players add $tmp1 main 100
scoreboard players operation @s meleedef *= $tmp1 main
scoreboard players operation @s meleedef /= $100 main

# rangedef
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_rangedef
scoreboard players add $tmp1 main 100
scoreboard players operation @s rangedef *= $tmp1 main
scoreboard players operation @s rangedef /= $100 main

# speed
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_speed
scoreboard players add $tmp1 main 100
scoreboard players operation @s speed *= $tmp1 main
scoreboard players operation @s speed /= $100 main

# vit
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_vit
scoreboard players add $tmp1 main 100
scoreboard players operation @s vit *= $tmp1 main
scoreboard players operation @s vit /= $100 main

# damage
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_damage
scoreboard players add $tmp1 main 100
scoreboard players operation @s damage *= $tmp1 main
scoreboard players operation @s damage /= $100 main

# physicaldmg
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_physicaldmg
scoreboard players add $tmp1 main 100
scoreboard players operation @s physicaldmg *= $tmp1 main
scoreboard players operation @s physicaldmg /= $100 main

# magicdmg
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_magicdmg
scoreboard players add $tmp1 main 100
scoreboard players operation @s magicdmg *= $tmp1 main
scoreboard players operation @s magicdmg /= $100 main

# meleedmg
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_meleedmg
scoreboard players add $tmp1 main 100
scoreboard players operation @s meleedmg *= $tmp1 main
scoreboard players operation @s meleedmg /= $100 main

# rangedmg
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_rangedmg
scoreboard players add $tmp1 main 100
scoreboard players operation @s rangedmg *= $tmp1 main
scoreboard players operation @s rangedmg /= $100 main

# cc
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_cc
scoreboard players add $tmp1 main 100
scoreboard players operation @s cc *= $tmp1 main
scoreboard players operation @s cc /= $100 main

# agi
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_agi
scoreboard players add $tmp1 main 100
scoreboard players operation @s agi *= $tmp1 main
scoreboard players operation @s agi /= $100 main

# maxeng
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_maxeng
scoreboard players add $tmp1 main 100
scoreboard players operation @s maxeng *= $tmp1 main
scoreboard players operation @s maxeng /= $100 main

# attackspeed
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_attackspeed
scoreboard players add $tmp1 main 100
scoreboard players operation @s attackspeed *= $tmp1 main
scoreboard players operation @s attackspeed /= $100 main

# bonusattackspeed
scoreboard players operation $tmp1 main = @s stats_modifier_addmult_bonusattackspeed
scoreboard players add $tmp1 main 100
scoreboard players operation @s bonusattackspeed *= $tmp1 main
scoreboard players operation @s bonusattackspeed /= $100 main