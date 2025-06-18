#>system:entity/check_attacked/check_number_10
# 
# 攻撃を受けたエンティティの識別番号の11桁目が0か1かを調べ、その識別番号のエンティティに次の関数を呼び出させる。
#
# @within system:entity/check_attacked

execute if entity @a[tag=atker,advancements={system:entity/phe={10-0 = true}}] as @s[tag=ID10.0] run function system:entity/check_attacked/check_number_11
execute if entity @a[tag=atker,advancements={system:entity/phe={10-1 = true}}] as @s[tag=ID10.1] run function system:entity/check_attacked/check_number_11
