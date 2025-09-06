tag @s add w5tmp
execute as @a[distance=..8,tag=!w5tmp] if score @s teamscore = @a[tag=w5tmp,limit=1] teamscore run function items:skills/weapon/5/buff
execute as @a[distance=..24,tag=!w5tmp] if score @s teamscore = @a[tag=w5tmp,limit=1] teamscore run tag @s add w5bufftmp
tellraw @p[tag=w5bufftmp] [{text:"[",color:"dark_red"},{selector:"@s",color:"red"},{text:"] ",color:"dark_red"},{text:"共に道を拓こうぞ、",color:"red"},{selector:"@p[tag=w5bufftmp]",color:"red"},{text:"よ。",color:"red"}]
execute as @p[tag=w5bufftmp] at @s run playsound entity.allay.hurt neutral @s ~ ~ ~ 1 0.6
execute as @p[tag=w5bufftmp] run function effects:system/modify/ {id:"32",duration:400,level:1}
tag @a[tag=w5bufftmp] remove w5bufftmp
scoreboard players reset $tmp tmp
tag @s remove w5tmp