#>system:entity/check_attacked/check_number_2
# 
# 攻撃を受けたエンティティの識別番号の3桁目が0か1かを調べ、その識別番号のエンティティに次の関数を呼び出させる。
#
# @within system:entity/check_attacked

execute if entity @a[tag=atkertmp,advancements={system:entity/phe={2-0 = true}}] as @s[tag=ID2.0] run function system:entity/check_attacked/check_number_3
execute if entity @a[tag=atkertmp,advancements={system:entity/phe={2-1 = true}}] as @s[tag=ID2.1] run function system:entity/check_attacked/check_number_3
