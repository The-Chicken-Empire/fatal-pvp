#此処に死亡時トリガーを書く
#magic21の死亡処理
execute at @s run function items:skills/magic/21/skill2/kill
#magic27
execute if entity @s[tag=magic27totem] at @s run function items:skills/magic/27/break
#magic41
execute if entity @s[tag=magic41totem] at @s run function items:skills/magic/41/break

function effects:system/death_e with entity @s
tp @s 0 -300 0
kill @s