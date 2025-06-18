#>system:entity/check_attacked/check_number_7
# 
# 攻撃を受けたエンティティの識別番号の8桁目が0か1かを調べ、その識別番号のエンティティに次の関数を呼び出させる。
#
# @within system:entity/check_attacked

execute if entity @a[tag=atker,advancements={system:entity/phe={7-0 = true}}] as @s[tag=ID7.0] run function system:entity/check_attacked/check_number_8
execute if entity @a[tag=atker,advancements={system:entity/phe={7-1 = true}}] as @s[tag=ID7.1] run function system:entity/check_attacked/check_number_8
