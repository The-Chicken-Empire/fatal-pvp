#>systems:check_attacker/check_number_4
# 
# 攻撃をしたエンティティの識別番号の5桁目が0か1かを調べ、その識別番号のエンティティに次の関数を呼び出させる。
#
# @within systems:check_attacker

execute if entity @a[tag=victimtmp,advancements={system:entity/ehp={4-0 = true}}] as @s[tag=ID4.0] run function system:entity/check_attacked/check_number_5
execute if entity @a[tag=victimtmp,advancements={system:entity/ehp={4-1 = true}}] as @s[tag=ID4.1] run function system:entity/check_attacked/check_number_5
