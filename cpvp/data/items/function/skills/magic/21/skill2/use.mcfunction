execute if entity @s[nbt={OnGround:1b}] at @s run function items:skills/magic/21/skill2/active
execute if entity @s[nbt={OnGround:0b}] run title @s subtitle {"text":"地面に足を付けてください","color":"red"}
execute if entity @s[nbt={OnGround:0b}] run title @s title {"text":""}