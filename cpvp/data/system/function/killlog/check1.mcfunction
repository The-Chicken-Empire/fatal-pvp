execute as @a if score @s playerdata = @a[tag=tmpdied,limit=1] attacker run tag @s add tmpkiller
execute unless entity @a[tag=tmpkiller] run function system:killlog/unlessattacker

execute unless data storage atktrigger: hage if entity @a[tag=tmpkiller] run return run function system:killlog/ifattacker
execute if data storage atktrigger: hage run return run function system:killlog/ifdata with storage atktrigger: hage

tag @a remove tmpkiller