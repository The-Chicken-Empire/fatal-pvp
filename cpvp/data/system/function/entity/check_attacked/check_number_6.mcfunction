#>system:entity/check_attacked/check_number_6
# 
# 攻撃を受けたエンティティの識別番号の7桁目が0か1かを調べ、その識別番号のエンティティに次の関数を呼び出させる。
#
# @within system:entity/check_attacked

execute if entity @a[tag=atkertmp,advancements={system:entity/phe={6-0 = true}}] as @s[tag=ID6.0] run function system:entity/check_attacked/check_number_7
execute if entity @a[tag=atkertmp,advancements={system:entity/phe={6-1 = true}}] as @s[tag=ID6.1] run function system:entity/check_attacked/check_number_7
