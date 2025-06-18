#>systems:check_attacker/check_number_2
# 
# 攻撃をしたエンティティの識別番号の3桁目が0か1かを調べ、その識別番号のエンティティに次の関数を呼び出させる。
#
# @within systems:check_attacker

execute if entity @a[tag=attacked,advancements={system:entity/ehp={2-0 = true}}] as @s[tag=ID2.0] run function system:entity/check_attacked/check_number_3
execute if entity @a[tag=attacked,advancements={system:entity/ehp={2-1 = true}}] as @s[tag=ID2.1] run function system:entity/check_attacked/check_number_3
