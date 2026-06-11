#>system:entity/check_attacked/check_number_8
# 
# 攻撃を受けたエンティティの識別番号の9桁目が0か1かを調べ、その識別番号のエンティティに次の関数を呼び出させる。
#
# @within system:entity/check_attacked

execute if entity @a[tag=atkertmp,advancements={system:entity/phe={8-0 = true}}] as @s[tag=ID8.0] run function system:entity/check_attacked/check_number_9
execute if entity @a[tag=atkertmp,advancements={system:entity/phe={8-1 = true}}] as @s[tag=ID8.1] run function system:entity/check_attacked/check_number_9
