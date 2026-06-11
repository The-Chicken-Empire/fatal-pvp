#>system:entity/check_attacked/check_number_5
# 
# 攻撃を受けたエンティティの識別番号の6桁目が0か1かを調べ、その識別番号のエンティティに次の関数を呼び出させる。
#
# @within system:entity/check_attacked

execute if entity @a[tag=atkertmp,advancements={system:entity/phe={5-0 = true}}] as @s[tag=ID5.0] run function system:entity/check_attacked/check_number_6
execute if entity @a[tag=atkertmp,advancements={system:entity/phe={5-1 = true}}] as @s[tag=ID5.1] run function system:entity/check_attacked/check_number_6
