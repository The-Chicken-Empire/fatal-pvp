#>system:entity/check_attacked/check_number_14
# 
# 攻撃を受けたエンティティの識別番号の15桁目が0か1かを調べ、その識別番号のエンティティに次の関数を呼び出させる。
#
# @within system:entity/check_attacked

execute if entity @a[tag=atkertmp,advancements={system:entity/phe={14-0 = true}}] as @s[tag=ID14.0] run function system:entity/check_attacked/check_number_15
execute if entity @a[tag=atkertmp,advancements={system:entity/phe={14-1 = true}}] as @s[tag=ID14.1] run function system:entity/check_attacked/check_number_15
